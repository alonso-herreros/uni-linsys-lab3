%% Generate signal
f0 = 2000; % Hz
tmin = 0; tmax = 3;

xc = @(t) sin(2*pi*f0*t);

% Sampling frequency: 5000 Hz
fs1 = 5000; Ts1 = 1/fs1;
t1 = tmin:Ts1:tmax;
sound(xc(t1), fs1); pause(3);

% Sampling frequency: 3000 Hz
fs2 = 3000; Ts2 = 1/fs2;
t2 = tmin:Ts2:tmax;
sound(xc(t2), fs2); pause(3);

% Sampling frequency: 2500 Hz
fs3 = 2500; Ts3 = 1/fs3;
t3 = tmin:Ts3:tmax;
sound(xc(t3), fs3); pause(4);

%% Observations:
%{
    When the sampling frequency is less than 2*f0, the signal is not
    reconstructed properly. This is because the sampling frequency is not
    high enough to capture the signal.
    The reconstructed signal has a frequency lower than the original signal 
    because of aliasing.

    The frequency of the reconstructed signal is given by:
    fa = |k*fs - f0|
    where k the closest integer to f0/fs, such that fa <= fs/2
%}


%% Predicting the frequency of the reconstructed signal

% High enough sampling frequency: fs = 5000 Hz
fs = 5000; Ts = 1/fs;
t = 0:Ts:1; % Lower signal length



% For fs = 5000 Hz, k = 0, fa = |0 - 2000 Hz| = 2000 Hz
fa1 = 2000; % Hz
xr1 = @(t) sin(2*pi*fa1*t);

sound(xc(t1), fs1); pause(3.5); % Sampling rate 1: 5000 Hz
sound(xr1(t), fs); pause(1.5); % High sampling rate, predicted frequency


% For fs = 3000 Hz, k = 1, fa = |3000 - 2000| Hz = 1000 Hz
fa2 = 1000; % Hz
xr2 = @(t) sin(2*pi*fa2*t);

sound(xc(t2), fs2); pause(3.5); % Sampling rate 2: 3000 Hz
sound(xr2(t), fs); pause(1.5); % High sampling rate, predicted frequency


% For fs = 2500 Hz, k = 1, fa = |2500 - 2000| Hz = 500 Hz
fa3 = 500; % Hz
xr3 = @(t) sin(2*pi*fa3*t);

sound(xc(t3), fs3); pause(3.5); % Sampling rate 3: 2500 Hz
sound(xr3(t), fs); pause(1.5); % High sampling rate, predicted frequency
