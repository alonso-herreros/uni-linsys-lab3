%% Generate the signal values
run("ex2_values.m");

%% Plot the results
figure(1);

subplot(3, 1, 1, "replace"); hold on;

plot(fc, real(Xc), DisplayName="$\Re(\hat{x}_c(f))$")
plot(fc, imag(Xc), DisplayName="$\Im(\hat{x}_c(f))$")
xlabel("f"); ylabel("$\hat{x}_c(f)$", Interpreter="latex");
title("Fourier transform of $x_c(\cdot)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;

subplot(3, 1, 2, "replace"); hold on;
plot(fd, real(Xd), DisplayName="$\Re(\hat{x}_d(f))$")
plot(fd, imag(Xd), DisplayName="$\Im(\hat{x}_d(f))$")
xlabel("f"); ylabel("$\hat{x}_d(f)$", Interpreter="latex");
title("Fourier transform of $x_d(\cdot)$ with $T_s=0.01$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;

subplot(3, 1, 3, "replace"); hold on;
plot(fd, real(Xd2), DisplayName="$\Re(\hat{x}_d(f))$")
plot(fd, imag(Xd2), DisplayName="$\Im(\hat{x}_d(f))$")
xlabel("f"); ylabel("$\hat{x}_d(f)$", Interpreter="latex");
title("Fourier transform of $x_d(\cdot)$ with $T_s=0.01$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;
