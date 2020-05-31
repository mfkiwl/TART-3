import disko
import logging
import argparse
import json

import numpy as np
import matplotlib.pyplot as plt
import tensorflow as tf

#    Use the SVD of the telescope operator to evaluate the performance of an all-sky array
#    layout
#



def polar_to_rectangular(r, theta):
    '''
        Rectangular coordinates are with the y axis aligned with north-south
        and the x axis pointing east
    '''
    x = r * np.sin(theta)
    y = r * np.cos(theta)
    z = np.zeros_like(x)
    
    return x,y,z


def init(radius_lower, spacing, radius_limit):
    '''
        Define the globals needed by our minimization functoin
    '''
    global l, m, n_minus_1, p2j, theta, pixel_areas, radius, radius_min, min_spacing
    
    l = tf.constant(ant.fov.l)
    m = tf.constant(ant.fov.m)
    n_minus_1 = tf.constant(ant.fov.n_minus_1)
    
    freq = 1.57542e9
    C = 2.99793e8
    

    num_ant = 24
    num_arms = 3
    radius = tf.constant(radius_limit, dtype=tf.float64)
    min_spacing = tf.constant(spacing, dtype=tf.float64)
    radius_min = tf.constant(radius_lower, dtype=tf.float64)
    
    p2j = tf.constant(2.0*np.pi*1.0j * freq / C)

    arm_angles = [0,np.radians(120),np.radians(240)]
    theta = tf.constant(np.array([[a,]*8 for a in arm_angles]).flatten())

    n_s = l.shape[0]
    pixel_areas = tf.constant(1.0 / np.sqrt(n_s), dtype=tf.complex128)
    
def constrain(x, lower, upper):
    sharpness = 5
    clip_lower = tf.math.softplus((x-lower)*sharpness)/sharpness + lower
    return upper - tf.math.softplus((-clip_lower + upper)*sharpness)/sharpness

def penalize(duv, limit=0.2):
    sharpness = 50
    clip_lower = tf.math.softplus((limit - duv)*sharpness)/sharpness
    return clip_lower/limit

def global_f(x):
    '''
        A function suitable for optimizing using a global minimizer. This will
        return the condition number of the telescope operator
    '''
    
    global l, m, n_minus_1, p2j, theta, pixel_areas, radius, radius_min, min_spacing

    x_constrained = constrain(x, lower=radius_min, upper=radius)

    _x = x_constrained * tf.sin(theta)
    _y = x_constrained * tf.cos(theta)
    _z = tf.zeros_like(x)
    
    num_ant = x.shape[0]
    
    rows = []
    penalty = 1
    for i in range(num_ant):
        for j in range(i+1, num_ant):
            u = _x[i] - _x[j]
            v = _y[i] - _y[j]
            w = _z[i] - _z[j]
            
            duv = (u**2 + v**2 + w**2)
            penalty += penalize(duv, min_spacing)
            
            exponent = -p2j*tf.cast(u*l + v*m + w*n_minus_1, tf.complex128)
            h = tf.exp(exponent) * pixel_areas
            rows.append(h)
    
    gamma = tf.stack(rows, axis=0)

    s = tf.linalg.svd(gamma, full_matrices=False, compute_uv=False)
    score = (s[0] / s[275])
    print("C/N={}  penalty={}".format(score, penalty))
    return penalty*score

#Function without input
def fu_minimize():
    tf.debugging.check_numerics(x_opt, message="x is buggered")
    return global_f(x_opt)


class YAntennaArray:
    '''
        Antenna array consists of three arms called arm0, arm120 and arm240.
        Each arm has N antennas. In the case of the tart, it will be N=8
        
    '''
    def __init__(self, N, radius, res_arcmin, fov_degrees):
        self.N = N
        self.radius = radius
        self.frequency = 1.57542e9
        self.fov = disko.HealpixSubSphere.from_resolution(resolution=res_arcmin, 
                                      theta = np.radians(0.0), phi=0.0, 
                                      radius=np.radians(fov_degrees/2))
        self.fig = plt.figure(figsize=(8,4))
        self.ax1 = self.fig.add_subplot(1,2,1, adjustable='box', aspect=1)
        self.ax2 = self.fig.add_subplot(1,2,2, adjustable='box', aspect=1)

        #self.fig, (self.ax1, self.ax2) = plt.subplots(1, 2)
        #self.fig.suptitle('Optimizer Outpu')
        
    def score(self, arms):
        # Create telescope operator
        
        dsko = self.get_disko(arms)
        
        gamma = dsko.make_gamma(self.fov)
        print("gamma shape {}".format(gamma.shape))
        s = tf.linalg.svd(gamma, full_matrices=False, compute_uv=False)

        score =  s[0] / s[275]
        return score

    def get_ant_pos(self, arms):
        arm0, arm120, arm240 = arms
        x0,y0,z0 = polar_to_rectangular(r=arm0, theta=0)
        x120,y120,z120 = polar_to_rectangular(r=arm120, theta=np.radians(120))
        x240,y240,z240 = polar_to_rectangular(r=arm240, theta=np.radians(240))
        x = np.hstack((x0, x120, x240,))
        y = np.hstack((y0, y120, y240,))
        z = np.hstack((z0, z120, z240,))
        
        ant_pos = np.array([x,y,z]).T
        return ant_pos

    def get_disko(self, arms):
        frequencies = [self.frequency]
        
        ant_pos = self.get_ant_pos(arms)
                
        array_disko = disko.DiSkO.from_ant_pos(ant_pos, frequencies[0])
        return array_disko
    
    def sort_arms(self, arms):
        arm0, arm120, arm240 = arms
        arm0 = np.sort(arm0)
        arm120 = np.sort(arm120)
        arm240 = np.sort(arm240)
        return arm0, arm120, arm240
    
    def plot_uv(self, arms, score):
        
        #self.fig.clf()
        self.ax1.clear()
        self.ax1.set_aspect('equal', adjustable='box')
        dsko = self.get_disko(arms)
        self.ax1.set_title("U-V coverage score={:.3g}".format(score))
        self.ax1.plot(dsko.u_arr, dsko.v_arr, '.')
        self.ax1.plot(-dsko.u_arr, -dsko.v_arr, '.')
        self.ax1.grid(True)
        
        ant_pos = self.get_ant_pos(arms)

        self.ax2.clear()
        self.ax2.set_aspect('equal', adjustable='box')
        self.ax2.set_title("Antenna Locations")
        self.ax2.plot(ant_pos[:,0], ant_pos[:,1], 'x')
        self.ax2.grid(True)

        self.fig.savefig('uv_coverage.pdf')
        
        plt.pause(0.1)
        
        ret = {}
        ret['score'] = score
        arm0, arm120, arm240 = self.sort_arms(arms)

        ret['arm0'] = arm0.tolist()
        ret['arm120'] = arm120.tolist()
        ret['arm240'] = arm240.tolist()

        with open('optimized_array.json', 'w') as outfile:
            json.dump(ret, outfile, sort_keys=True, indent=4)
            
            
    
    def print(self, arms):
        
        arm0, arm120, arm240 = self.sort_arms(arms)

        arm0 = np.array2string(arm0, formatter={'float_kind':lambda x: "%.3f" % x})
        arm120 = np.array2string(arm120, formatter={'float_kind':lambda x: "%.3f" % x})
        arm240 = np.array2string(arm240, formatter={'float_kind':lambda x: "%.3f" % x})

        print("     Arm 0: {}".format(arm0))
        print("   Arm 120: {}".format(arm120))
        print("   Arm 240: {}".format(arm240))

if __name__=="__main__":
    
    parser = argparse.ArgumentParser(description='DiSkO Array: Optimize an array layout using the singular values of the array operator', 
                                    formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('--iter', type=int, default=100, help="Number of iterations.")
    parser.add_argument('--nant', type=int, default=8, help="Number of antennas per arm.")
    parser.add_argument('--narm', type=int, default=3, help="Number of arms.")

    parser.add_argument('--arcmin', type=float, default=120, help="Resolution of the sky in arc minutes.")
    parser.add_argument('--radius', type=float, default=2.0, help="Length of each arm in meters.")
    parser.add_argument('--radius-min', type=float, default=0.1, help="Minimum antenna position along each arm in meters.")
    parser.add_argument('--spacing', type=float, default=0.15, help="Minimum antenna spacing.")

    parser.add_argument('--fov', type=float, default=180.0, help="Field of view in degrees")

    parser.add_argument('--learning-rate', type=float, default=0.02, help="Optimizer learning rate.")

    ARGS = parser.parse_args()





    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s %(name)-12s %(levelname)-8s %(message)s',
                        datefmt='%m-%d %H:%M',
                        filename='array_opt.log',
                        filemode='w')
    # define a Handler which writes INFO messages or higher to the sys.stderr
    console = logging.StreamHandler()
    console.setLevel(logging.INFO)
    formatter = logging.Formatter('%(name)-12s: %(levelname)-8s %(message)s')
    console.setFormatter(formatter)
    
    # add the handler to the root logger
    logger = logging.getLogger()
    logger.addHandler(console)



    radius = ARGS.radius
    radius_min = ARGS.radius_min
    N = ARGS.nant
    
    ant = YAntennaArray(N=8, radius=radius, 
                        res_arcmin=ARGS.arcmin,
                        fov_degrees=ARGS.fov)
    best_score = 1e49
    
    # Set up global variables for the tf function
    init(radius_min, ARGS.spacing, radius)
    
    
    if True:
        x_opt = tf.Variable(tf.random_uniform_initializer(minval=radius_min, 
                                                          maxval=radius)(shape=(24,), 
                                                                              dtype=tf.float64))
        opt = tf.keras.optimizers.RMSprop(learning_rate=ARGS.learning_rate)
        for i in range(ARGS.iter):
            opt.minimize(fu_minimize, var_list=[x_opt])
            y = global_f(x_opt).numpy()
            
            print("score = {:6.3g}".format(y))
            #print (opt.get_gradients(y, [x_opt]))
            if (y < best_score):
                x_constrained = constrain(x_opt, radius_min, radius).numpy()
                arms = np.split(x_constrained, 3)
                ant.print(arms)
                ant.plot_uv(arms, y)
                best_score = y
                

    else:
        for i in range(ARGS.iter):
            arm0 = np.random.uniform(0, radius, 8)
            arm120 = np.random.uniform(0, radius, 8)
            arm240 = np.random.uniform(0, radius, 8)
            arms = [arm0, arm120, arm240]
            
            score = ant.score(arms)
            x = np.array(arms).flatten()
            score2 = global_f(x)
            print(score, score2)
            
            if (score < best_score):
                print("Iteration {} New best score {}".format(i, score))
                ant.print(arm0, arm120, arm240)
                best_score = score
                ant.plot_uv(arms, score)
        
        print("Best score: {}".format(best_score))
        ant.print(arm0, arm120, arm240)