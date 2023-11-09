function h0 = filtro_orden0(t, Ts)
% RETENEDOR DE ORDEN CERO:
% "t": vector de muestras de tiempo.
% "Ts": per�odo de muestreo de la se�al original.
% "h0": respuesta al impulso del filtro retenedor de orden cero.

h0 = zeros(size(t));
epsilon = 1e-10;
ind = find((t>=0) & (t<(Ts-epsilon)));
h0(ind) = 1;
