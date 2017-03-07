
%Problema 2 Examen
x=-0:0.1:2;
f=exp(x)+x.^3+2.*x.^2+10.*x-20;
fp=exp(x)+3*x.^2+4.*x+10;
fpp=exp(x)+6.*x+4;
hold on
grid on

plot(x,f,'r-');
plot(x,fp,'g--');
plot(x,fpp,'b--');
title('Grafica de f, df, ddf')
xlabel('x')
ylabel('f(x) (rojo), df(x) (verde), ddf(x) (azul)')

fprintf('pulsa intro');
pause
%en la gráfica se observa que f tiene una única raiz en [0,2], y que en
%dicho intervalo f' y f'' son positivas. Como f es de clase infinito,
%se cumplen las hipótesis de Newton. se toma x0=2 
sol(1)= 2;
nit = input('introduce el número de iteraciones:');
for i=2:nit
   sol(i)=sol(i-1)-f(sol(i-1))/df(sol(i-1));
end
plot(x, sol);