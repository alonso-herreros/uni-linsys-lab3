addpath("../original");

%% Continuous signal xc
% Define the frequency and duration of the sinusoidal signal
f0 = 2; % Hz
tmin = -2; tmax = 2; tstep = 0.001; % s
tc = tmin:tstep:tmax;

% Generate the continuous sinusoidal signal
xc = sin(2*pi*f0*tc);

% Evaluate its Fourier transform
fc = linspace(-3, 3, 1001);
Xc = zeros(size(fc));
for k = 1:length(fc)
    Xc(k) = tstep * sum(xc.*exp(-1j*2*pi*fc(k)*tc));
end
% X_num contains the numerical evaluation of the Fourier analysis integral


%% Discrete signal xd

% Generate the discrete samples and their fourier transforms
Ts = 0.1; % seconds
[xd, td] = conv_cd(xc, tc, Ts);
n = td/Ts;

fd = linspace(-0.5, 0.5, 1001);
Xd = zeros(size(fd));
for k = 1:length(fd)
    Xd(k) = sum(xd.*exp(-1j*n*2*pi*fd(k)));
end

% With 1/10 sampling step
Ts2 = 0.01; % seconds
[xd2, td2] = conv_cd(xc, tc, Ts2);
n2 = td2/Ts2;

Xd2 = zeros(size(fd));
for k = 1:length(fd)
    Xd2(k) = sum(xd2.*exp(-1j*n2*2*pi*fd(k)));
end
