addpath("../lib");

%% Define the signals

% Generate the continuous sinusoidal signal
f0 = 5; % Hz
tc = -2:0.001:2;

xc = sin(2*pi*f0*tc);


% Generate the discrete samples
Ts = 0.25; % Sampling period (seconds)

[xd, td] = conv_cd(xc, tc, Ts);


%% Reconstruction
xr = dc_interpolation(xd, "ideal", tc, td);


%% Fourier transforms of original and reconstructed signals
fc = linspace(-8, 8, 1001);

% Original
Xc = zeros(size(fc));
for k = 1:length(fc)
    Xc(k) = tstep * sum(xc.*exp(-1j*2*pi*fc(k)*tc));
end

% Discrete
Xr = zeros(size(fc));
for k = 1:length(fc)
    Xr(k) = tstep * sum(xr.*exp(-1j*2*pi*fc(k)*tc));
end
