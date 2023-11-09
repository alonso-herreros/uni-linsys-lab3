function [xd, tsamp] = conv_cd(xc, t, Ts)
% "xc": se�al continua de entrada (vector de muestras de la se�al)
% "t": vector de muestras de tiempo correspondientes a las muestras de la se�al "xc"
% "Ts": per�odo de muestreo sobre "xc" para obtener la se�al de salida "xd" que a su 
% vez tendr� como vector de muestras de tiempo "tsamp"

% C�lculo del intervalo de tiempo entre la primera y la �ltima muestra de "xc":
T = t(end) - t(1);

% C�lculo del n�mero de muestras si muestreo "xc" cada "Ts" (redondeo al inferior + 1):
Ns = floor(T/Ts) + 1;

% Preparo el vector "xd" con la primera muestra "xc" y el resto, de momento, ceros:
xd = [xc(1) zeros(1, Ns-1)];

% Preparo el vector de muestras de tiempo de "xd" con la primera muestra de "t" y 
% el resto, de momento, ceros:
tsamp = [t(1) zeros(1, Ns-1)];

% Con este bucle "for" calculo el resto de valores de "xd" y de "tsamp": 
for n = 1:Ns-1
% Voy restando a los valores de "t" el valor de "t(1)+nTs", y calculo el valor absoluto 
% de la diferencia y el m�nimo valor del vector resultante, para acercarme lo m�s posible 
% al valor de la se�al en "nTs" (carga la posici�n del valor m�s cercano en "ind" y el 
% error de la aproximaci�n en "delta"):
   [delta, ind] = min(abs(t-t(1)-n*Ts));
   xd(n+1) = xc(ind);
   tsamp(n+1) = t(ind);
end