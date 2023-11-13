%% Generate the signal values
run("../Exercise 2/ex2_values.m");
addpath("../lib");

% Reconstruct signal x from xd with zero-order hold
xr0 = dc_interpolation(xd, "zero", tc, td);

% Reconstruct signal x from xd2 with zero-order hold
xr02 = dc_interpolation(xd2, "zero", tc, td2);


% Reconstruct signal x from xd with linear interpolation
xrl = dc_interpolation(xd, "linear", tc, td);

% Reconstruct signal x from xd2 with linear interpolation
xrl2 = dc_interpolation(xd2, "linear", tc, td2);