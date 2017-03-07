function A=tridChol(A)

%Hoja 3 Problema 8
%Solución de sistemas tridiagonales por Cholesky
n=size(A,1);
%transforma la matriz en una LU
for k=1:n-1
    A(k+1,k) = A(k+1,k)/A(k,k);
    A(k+1,k+1) = A(k+1,k+1) - A(k+1,k)* A(k,k+1);
end

%Transforma la LU en Cholesky
d = sqrt(diag(A));
A = A-diag(diag(A))+diag(d); %Remplazamos la diagonal por su raiz cuadrada
for i=1:n-1
    A(i,i+1) = A(i,i+1)/d(i); %Dividimos las filas de U
    A(i+1,i) = A(i+1,i)*d(i); %Multiplicamos las columnas de L
end