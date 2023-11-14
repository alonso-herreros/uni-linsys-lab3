%% Generate signal
f0 = 2000; % Hz
tmin = 0; tmax = 3;

xc = @(t) sin(2*pi*f0*t);

% Sampling frequency: 5000 Hz
fs1 = 5000; Ts = 1/fs1;
t1 = tmin:Ts:tmax;
sound(xc(t1), fs1); pause(3);

% Sampling frequency: 3000 Hz
fs2 = 3000; Ts = 1/fs2;
t2 = tmin:Ts:tmax;
sound(xc(t2), fs2); pause(3);

% Sampling frequency: 2500 Hz
fs3 = 2500; Ts = 1/fs3;
t3 = tmin:Ts:tmax;
sound(xc(t3), fs3); pause(3);

%% Observations:
%{
    When the sampling frequency is less than 2*f0, the signal is not
    reconstructed properly. This is because the sampling frequency is not
    high enough to capture the signal.
    The reconstructed signal has a frequency lower than the original signal 
    because of aliasing.

    The frequency of the reconstructed signal is given by:
    fa = |k*fs - f0|
    where k the closest integer to f0/fs, such that fa < fs/2
%}
