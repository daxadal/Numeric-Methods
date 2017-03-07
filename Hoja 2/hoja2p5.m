
%Hoja 2 Problema 5
%Potencias sucesivas de una matriz
clear all;
p = input('Dame un entero: ');
A = input('Dame una matriz: ');
if norm(A,1)<1 || norm(A,2)<1 || norm(A, Inf)<1 || norm(A, 'fro')<1
    disp('La sucesión A^p tiende a cero');
else
    disp('La sucesion A^p tiende a infinito');
end
B=A;
for i=2:p
    B=B*A;
end
disp('La matriz A^p es: ');
B
