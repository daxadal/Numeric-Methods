function v=trsup(A,b)

%Hoja 4 Funcion auxiliar
%Soluci�n de sistemas triangulares superiores
n=size(A,1);
v(n)=b(n)/A(n,n);
for i=n-1:-1:1
   v(i)=(b(i)-A(i,i+1:n)*v(i+1:n)')/A(i,i);
end
