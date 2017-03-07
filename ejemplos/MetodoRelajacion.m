function [x,iter]=MetodoRelajacion(A,b,epsilon,itermax,paramRelajacion)
aux1=size(A);
LongitudA=aux1(1,1);        
AnchuraA=aux1(1,2);
D=eye(LongitudA);
for i=1:LongitudA
    D(i,i)=A(i,i);
end
E=zeros(LongitudA);
for i=1:LongitudA-1
    for s=i+1:LongitudA
        E(s,i)=A(s,i);
    end
end
E=-E;
F=zeros(LongitudA);
for i=2:LongitudA
    for s=i-1:-1:1
        F(s,i)=A(s,i);
        
    end
end
F=-F;
error=1;
u0= ones(LongitudA,1);
nb=norm(b);
iter=0;
D1=(1/paramRelajacion)*D;
D2=((1-paramRelajacion)/(paramRelajacion))*D;
while (error > (epsilon*nb) && iter < itermax)
    u1=(D1-E)\(D2+F)*u0+ (D1-E)\b;
    residuo=b-A*u1;
    error=norm(residuo);
    u0=u1;
    iter=iter+1;
end
if iter==itermax
    disp('Número máximo de iteraciones alcanzado')
    return
end
if paramRelajacion >= 2 
    disp('el parametro de Relajacion debe ser menor que dos para que el método converja')
    x=0;
end
x=u1;