function v=trinfL11(A,b)

%Hoja 3 Problema 3
%Solución de sistemas triangulares inferiores con unos en la diagonal
n=size(A,1);
v(1)=b(1);
for i=2:n
   v(i)=(b(i)-A(i,1:i-1)*v(1:i-1)');
end