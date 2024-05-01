import numpy as np
n_array=np.array([[55,35,25];
		   [44,32,3];
		   [10,40,70]];
print("Numpy Matrix is")
print(n_array)
det=np.linalg.det(n_array)
print("det of 3*3 matrix")
print(int det)
