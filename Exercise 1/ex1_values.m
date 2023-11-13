addpath("../original");

% Define the frequency and duration of the sinusoidal signal
f0 = 2; % Hz
t = linspace(-1, 1, 1001);

% Generate the continuous sinusoidal signal
xc = sin(2*pi*f0*t);

% Generate the discrete samples using the conv_cd function
Ts = 0.1; % seconds
[xd, td] = conv_cd(xc, t, Ts);
