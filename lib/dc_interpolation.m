function xr = dc_interpolation(xd, hr_in, tc, td)
% DC_INTERPOLATION  Interpolates a discrete-time signal to a continuous-time signal
%   xr = dc_interpolation(xd, hr, tc, td) interpolates the discrete-time signal xd to a
%   continuous-time signal xr using the impulse response function hr. The continuous-time
%   signal is sampled at the times in tc, and the discrete-time signal is sampled at the
%   times in td. The continuous-time signal is returned in xr.

if isstring(hr_in) % If hr is a string, assign the appropriate filter
    addpath("../original");
    Ts = td(2) - td(1); % Sampling period of the discrete-time signal
    switch hr_in
        case {"ideal", "i", "sinc"}, hr = @(x) filtro_ideal(x, Ts);
        case {"zero", "0", "rect"},  hr = @(x) filtro_orden0(x, Ts);
        case {"linear", "l", "tri"}, hr = @(x) filtro_lineal(x, Ts);
    end
end

xr = zeros(size(tc));
for k = 1:length(tc)
    xr(k) = xr(k) + sum(xd.*hr(tc(k)-td));
end

end % end function