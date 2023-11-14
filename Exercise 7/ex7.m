addpath("../original");

%% Load sound file and display sampling frequency
[speech, Fs] = audioread("speech.wav");
tmax = (length(speech)-1)/Fs;
t = 0:1/Fs:tmax;
disp("Fs = " + Fs); % This should be 16 kHz, but it's 11025 Hz
disp("Length of speech = " + tmax); % 13.811 s

%% Original sound
sound(speech, Fs); pause(tmax + 0.5);

%% Sample at lower rates
Fs2 = 8000; Ts2 = 1/Fs2;
t2 = 0:Ts2:tmax;
s2 = interp1(t, speech, t2, "nearest"); % This is way way faster than conv_cd
sound(s2, Fs2); pause(tmax + 0.5);

Fs3 = 4000; Ts3 = 1/Fs3;
t3 = 0:Ts3:tmax;
s3 = interp1(t, speech, t3, "nearest");
sound(s3, Fs3); pause(tmax + 0.5);

Fs4 = 2000; Ts4 = 1/Fs4;
t4 = 0:Ts4:tmax;
s4 = interp1(t, speech, t4, "nearest");
sound(s4, Fs4); pause(tmax + 0.5);


%% Conclusions
%{
    There is a clear decrease in quality already with 8 kHz sampling rate.
    The speech is still understandable, but it sounds like it's coming from
    a radio. With 4 kHz sampling rate, the speech is still understandable,
    but with 2 kHz sampling rate, the speech is barely understandable.

    With this, we can conclude that the signal's bandwidth is over 4 kHz.
    This is because the Nyquist frequency for 8 kHz sampling rate is 4 kHz,
    and that proved to be too low.

    Male speech is typically under 8kHz, so 16 kHz sampling rate should be
    enough to capture the signal. However, the sampling rate of the file is
    11.025 kHz. The Nyquist frequency for this is 5.5125 kHz, which is
    too low, and that's why the original file still doesn't sound perfect.
%}
