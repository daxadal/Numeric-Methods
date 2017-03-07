
%Problema 1 Examen
m = input('Dame el número de subintervalos: ');
%Intervalo[1,4]
%h=(4-1)/3m = 1/m
intap = 0;
for i=0:m-1
    intap = intap +( exp(1+i/m) + 3*exp(1+(i+1)/m) + 3*exp(1+(i+2)/m) + exp(1+(i+3)/m))*3/(8*m);
end
intex = exp(4)-exp(1);
fprintf('El valor exacto de la integral es %d \n', intex);
fprintf('El valor aproximado de la integral es %d \n', intap);
fprintf('El resto de la aproximación es %d \n', intex-intap);