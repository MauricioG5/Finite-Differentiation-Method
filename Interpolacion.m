clear x
clear y
num=input('Inserte el numero de puntos que va a ingresar: ');
for i=1:num
    fprintf('Ingrese el valor de x(%d): ', i);
    x(i)=input('');
    fprintf('Ingrese el valor de y(%d): ', i);
    y(i)=input('');
end
b(1)=y(1);
f=1;
for i=2:num
    b(i)=DDF(x,y,i,f);
end
a0= b(1)-b(2)*x(1)+b(3)*x(1)*x(2);
a1=b(2)-b(3)*x(2)-b(3)*x(1);
a2=b(3);
syms X;
Funcion= a2*X^2 + a1*X + a0
