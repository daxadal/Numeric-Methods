function v=trinf(A,b)

%Hoja 3 Problema 3
%Solución de sistemas triangulares inferiores
n=size(A,1);
v(1)=b(1)/A(1,1);
for i=2:n
   v(i)=(b(i)-A(i,1:i-1)*v(1:i-1)')/A(i,i);
end
