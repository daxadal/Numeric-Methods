
%Hoja 2 Problema 2
%Propiedades de los determinantes
clear all;
A = input('Dame A, matriz cuadrada: ');
n = size(A,1);
fprintf('B tiene también %d x %d valores\n', n, n);
B = input('Dame B: ');
l = input('Dame l, número real o complejo: ');
fprintf('det AB = det BA = detA detB\n');
detAB = det(A*B)
detBA = det(B*A)
detA_detB = det(A)*det(B)
fprintf('Pulsa Intro para continuar\n');
pause
fprintf('det lA = l detA\n');
detlA = det(l*A)
l_detdA = (l^n)*det(A)
fprintf('Pulsa Intro para continuar\n');
pause
fprintf('det A* = detA\n');
detAadj = det(A')
detA = det(A)
fprintf('Pulsa Intro para continuar\n');
pause
fprintf('det A = producto de los autovalores\n');
aut = eig(A);
v_unit = ones(1,n);
PAut = v_unit*aut
detA