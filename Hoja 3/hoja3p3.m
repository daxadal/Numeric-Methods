
%Hoja 3 Problema 3
%Solución de sistemas triangulares

A = input('Dame la matriz A: ');
n = size(A,1);
fprintf('b debe tener %d valores\n', n);
b = input('Dame el vector b: ');
u = trinf(A,b);
v = trinfL11(A,b);
w = trsup(A,b);
fprintf('La resolución del sistema triangular inferior es');
disp(u);
fprintf('La resolución del sistema triangular inferior con Lii = 1 es');
disp(v);
fprintf('La resolución del sistema triangular superior es');
disp(w);