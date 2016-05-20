# Estimating-planar-transformations

Start from a perspective view of the planar object and obtain its frontal view.  This is a planar-rectification problem. 
Since we have not studied how to automatically detect the corresponding points, you can detect the corresponding points manually.
Directions:

- The method for estimating the parameters of the transformation between two planes is described in Section 15.2.4 Learning projective parameters (homography). The first step is to solve Eq. 15.37. You solve this equation for the nine parameters of the homography transformation. Once you have the nine parameters, you want to further optimize them using a non-linear solver, e.g., matlab's non-linear solver (Newton's method, Gradient descent, or Levenberg–Marquardt algorithm). The algorithm for finding the homography parameters is Algorithm 15.4 of the algorithm's booklet (available from canvas). Please, remember that the initial solution found by solving a system of linear equations is an approximation calculated in augmented space (i.e., homogeneous coordinates). The actual optimization problem is non-linear, which is given by Equation 15.33. As a result, the problem is only "solved" once you perform the non-linear optimization step. 

- Put the estimated values in the 3x3 matrix form. This is the tomography transformation that maps image points onto object points. To generate the fronts-parallel image, you need the matrix that maps object points onto image points. This is the inverse of the homography matrix that you initially found. Calculate the inverse of the transformation matrix as shown in Equation 15.41. You will need the inverse to transfer the correct colors from the original image to the transformed image (i.e., the fronto parallel view). The algorithm for calculating the position of points on the object (i.e., fronto parallel view) is in Algorithm 15.5. of the algorithm's booklet (available from canvas).

 
