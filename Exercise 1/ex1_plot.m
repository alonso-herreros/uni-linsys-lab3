run("ex1_values.m");

%% Plot the continuous signal in blue and its discrete samples in red
figure(1);
hold on;
plot(t, xc, "b", DisplayName="$x_c(t)$ (continuous)");
stem(td, xd, "r", DisplayName="$x_d[\frac{t}{T_s}]$ (discrete)");
xlabel("Time (s)");
ylabel("Amplitude");
title("Continuous and Discrete Sinusoidal Signals");
legend("show", Location="northeast", Interpreter="latex");
hold off;
