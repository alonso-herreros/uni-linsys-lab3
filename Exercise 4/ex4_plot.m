%% Generate the signal values
run("ex4_values.m");

%% Zero-order hold reconstruction
figure(1);
sgtitle("Reconstructions of $x_c(\cdot)$ from samples using zero-order hold", Interpreter="latex");

% Reconstruction using T_s = 0.1
subplot(2, 1, 1, "replace"); hold on;
title("Reconstructions of $x_c(\cdot)$ from samples using $T_s=0.1$", Interpreter="latex");
plot(tc, xc, "b", DisplayName="$x_c(t)$");
stem(td, xd, "r", DisplayName="$x_d[n]$");
plot(tc, xr0, "g", DisplayName="$x_r(t)$")
xlabel("f"); ylabel("$x_c(t)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;

% Reconstruction using T_s = 0.01
subplot(2, 1, 2, "replace"); hold on;
title("Reconstructions of $x_c(\cdot)$ from samples using $T_s=0.01$", Interpreter="latex");
plot(tc, xc, "b", DisplayName="$x_c(t)$");
stem(td2, xd2, "r", DisplayName="$x_d[n]$");
plot(tc, xr02, "g", DisplayName="$x_r(t)$")
xlabel("f"); ylabel("$x_c(t)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;


%% Linear interpolation reconstruction
figure(2);
sgtitle("Reconstructions of $x_c(\cdot)$ from samples using linear interpolation", Interpreter="latex");

% Reconstruction using T_s = 0.1
subplot(2, 1, 1, "replace"); hold on;
title("Reconstructions of $x_c(\cdot)$ from samples using $T_s=0.1$", Interpreter="latex");
plot(tc, xc, "b", DisplayName="$x_c(t)$");
stem(td, xd, "r", DisplayName="$x_d[n]$");
plot(tc, xrl, "g", DisplayName="$x_r(t)$")
xlabel("f"); ylabel("$x_c(t)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;

% Reconstruction using T_s = 0.01
subplot(2, 1, 2, "replace"); hold on;
title("Reconstructions of $x_c(\cdot)$ from samples using $T_s=0.01$", Interpreter="latex");
plot(tc, xc, "b", DisplayName="$x_c(t)$");
stem(td2, xd2, "r", DisplayName="$x_d[n]$");
plot(tc, xrl2, "g", DisplayName="$x_r(t)$")
xlabel("f"); ylabel("$x_c(t)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;