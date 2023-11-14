%% Generate the values
run("ex5_values.m");

%% Plot original and reconstructed signals
figure(1);

hold on;
title("Reconstructions of $x_c(\cdot)$ with $T_s=0.25$", Interpreter="latex");
plot(tc, xc, "b", DisplayName="$x_c(t)$");
stem(td, xd, "r", DisplayName="$x_d[n]$");
plot(tc, xr, "g", DisplayName="$x_r(t)$")
xlabel("t"); ylabel("$x(t)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;

%% Plot fourier transforms
figure(2);

subplot(2, 1, 1, "replace"); hold on;
title("Fourier transform of $x_c(\cdot)$", Interpreter="latex");
plot(fc, real(Xc), DisplayName="$\Re(\hat{x}_c(f))$")
plot(fc, imag(Xc), DisplayName="$\Im(\hat{x}_c(f))$")
xlabel("f"); ylabel("$\hat{x}_c(t)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;

subplot(2, 1, 2, "replace"); hold on;
title("Fourier transform of $x_r(\cdot)$", Interpreter="latex");
plot(fc, real(Xr), DisplayName="$\Re(\hat{x}_r(f))$")
plot(fc, imag(Xr), DisplayName="$\Im(\hat{x}_r(f))$")
xlabel("f"); ylabel("$\hat{x}_r(t)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;
