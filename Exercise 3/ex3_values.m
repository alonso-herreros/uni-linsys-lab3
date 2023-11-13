%% Generate the signal values
run("../Exercise 2/ex2_values.m");
addpath("../lib");

% Reconstruct signal x from xd
xr = dc_interpolation(xd, "ideal", tc, td);

% Reconstruct signal x from xd2
xr2 = dc_interpolation(xd2, "ideal", tc, td2);

