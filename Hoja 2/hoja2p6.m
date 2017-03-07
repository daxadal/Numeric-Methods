
%Hoja 2 Problema 6
%Condicionamiento de la matriz de Wilson
clear all;
A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
aut = eig(A'*A);
cond2 = sqrt(max(aut)/min(aut));
cond1 = cond(A,1);
condInf = cond(A,Inf);
condFro = cond(A,'fro');
fprintf('Condicionamiento de la matriz de Wilson\n');
fprintf('cond. 1: %d \n', cond1);
fprintf('cond. 2: %d \n', cond2);
fprintf('cond. Inf: %d \n', condInf);
fprintf('cond. Fro: %d \n', condFro);
