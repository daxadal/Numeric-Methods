
%Hoja 2 Problema 3
%Cálculos de normas
clear all;
A = input('Dame la matriz A: ');
n = size(A,1);
norm1v = zeros(n,1);
norminfv = zeros(n,1);
normfv = zeros(n,1);
for i=1:n
    norm1v(i) = sum(abs(A(:,i)));
    norminfv(i) = sum(abs(A(i,:)));
    normfv(i) = sum(abs(A(:,i).^2));
end;
norm1 = max(norm1v);
norminf = max(norminfv);
normf = sqrt(sum(normfv));
disp('Norma    Valor calculado    Valor Matlab');
fprintf('1    %15f  %15f \n',norm1, norm(A,1));
fprintf('inf  %15f  %15f \n',norminf, norm(A,Inf));
fprintf('F    %15f  %15f \n',normf, norm(A,'fro'));
    