
%Hoja 2 Problema 1
%Multiplicacion por bloques
clear all;
n1 = input('Dame el valor de n1: ');
n2 = input('Ahora el de n2: ');
fprintf('A tiene %d x %d valores\n', n1, n1);
A = input('Dame A: ');
fprintf('B tiene %d x %d valores\n', n1, n2);
B = input('Dame B: ');
fprintf('C tiene %d x %d valores\n', n2, n1);
C = input('Dame C: ');
fprintf('D tiene %d x %d valores\n', n2, n2);
D = input('Dame D: ');
fprintf('E tiene %d x %d valores\n', n1, n1);
E = input('Dame E: ');
fprintf('F tiene %d x %d valores\n', n1, n2);
F = input('Dame F: ');
fprintf('G tiene %d x %d valores\n', n2, n1);
G = input('Dame G: ');
fprintf('H tiene %d x %d valores\n', n2, n2);
H = input('Dame H: ');

M = [A B; C D]
N = [E F; G H]

fprintf('producto directo');
MN = M*N
fprintf('producto por bloques');
P = [A*E+B*G  A*F+B*H; C*E+D*G C*F+D*H]
