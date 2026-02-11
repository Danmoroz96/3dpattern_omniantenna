# 3dpattern_omniantenna
Plot the 3-Dimensional radiation pattern of the omni-directional antenna using MATLAB

The script takes spherical coordinate inputs (Theta and Phi) and calculates the corresponding Cartesian coordinates to generate a 3D mesh plot. While configured by default for an omni-directional antenna, the field pattern can be modified to represent various antenna types.

The script utilizes several key MATLAB functions to process the radiation data:

meshgrid: Creates a 2D grid from the theta and phi vectors to allow for matrix-based coordinate calculations.

sph2cart: Converts the spherical radiation data (azimuth, elevation, radius) into Cartesian coordinates (X, Y, Z) for plotting.

mesh: Generates the wireframe 3D visualization of the antenna's power distribution.

When running the script with the example parameters above, the console will display the input summary, and a figure window will show a perfectly uniform sphere, representing an ideal omni-directional radiator.

All the screenshots and code are in files
