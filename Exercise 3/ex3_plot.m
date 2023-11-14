%% Generate the signal values
run("ex3_values.m");


figure(1);

subplot(2, 1, 1, "replace"); hold on;

plot(tc, xc, "b", DisplayName="$x_c(t)$ (original)");
stem(td, xd, "r", DisplayName="$x_d[n]$ (sampled)");
plot(tc, xr, "g", DisplayName="$x_r(t)$ (reconstructed)")
xlabel("f"); ylabel("$x_c(t)$", Interpreter="latex");
title("Reconstructions of $x_c(\cdot)$ with $T_s=0.1$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;

subplot(2, 1, 2, "replace"); hold on;

plot(tc, xc, "b", DisplayName="$x_c(t)$ (original)");
stem(td2, xd2, "r", DisplayName="$x_d[n]$ (sampled with $T_s=0.01$)");
plot(tc, xr2, "g", DisplayName="$x_r(t)$ (with $T_s=0.01$)")
xlabel("f"); ylabel("$x_c(t)$", Interpreter="latex");
title("Reconstructions of $x_c(\cdot)$", Interpreter="latex");
legend("show", Interpreter="latex");
hold off;
