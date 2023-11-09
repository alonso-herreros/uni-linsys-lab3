function hi = filtro_ideal(t, Ts)
% IDEAL RECONSTRUCTION FILTER:
% t: vector of time samples.
% Ts: sampling period of the original signal.
% hi: impulse response of the ideal reconstruction filter.

  hi = Ts*sin(pi*t/Ts)./(pi*t); ind = find(t==0);
hi(ind) = 1;
