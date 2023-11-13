%% Generate the signal values
run("../Exercise 2/ex2_values.m");

% Reconstruct signal x from x_d
hr = filtro_ideal(tc, Ts);
tsr = Ts/tstep; % time step ratio = 0.1/0.0001 = 100 cont steps per disc step

k0 = (0-tmin)/tstep; % index of t=0
xr = zeros(size(tc));
for k = 1:length(tc)
    for n = 1:length(xd) % I'm done with trying to figure out the index ranges
        if (k+k0-(n-1)*tsr >= 1 && k+k0-(n-1)*tsr <= length(hr))
            xr(k) = xr(k) + xd(n)*hr(k+k0-(n-1)*tsr);
        end
    end
end


% Reconstruct signal x2 from x_d2

hr2 = filtro_ideal(tc, Ts2);
tsr2 = Ts2/tstep;

xr2 = zeros(size(tc));
for k = 1:length(tc)
    for n = 1:length(xd2)
        if (k+k0-(n-1)*tsr2 >= 1 && k+k0-(n-1)*tsr2 <= length(hr2))
            xr2(k) = xr2(k) + xd2(n)*hr2(k+k0-(n-1)*tsr2);
        end
    end
end

