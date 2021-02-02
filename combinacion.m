%INGRESAR VECTORES PARA COMPROBAR SI CON UNA CONBINACIÓN LINEAL DE v
%Matriz de vectores dados 
%La solución para el problema se da en v=[ 1 2 1] y w= [-1 1 4]

clc
clear all


disp('Para el vector v')

a=input('Ingrese elemento 1 del vector v: ');
b=input('Ingrese elemento 2 del vector v: ');
c=input('Ingrese elemento 3 del vector v: ');

disp('Para el vector w')
m=input('Ingrese elemento 1 del vector w: ');
n=input('Ingrese elemento 2 del vector w: ');
p=input('Ingrese elemento 3 del vector w: ');



A=[a b c ; m n p ]';
u=[ 1 8 11 ]'

v=A(:,1)
w=A(:,2)

S=rref([A u]); % Verifica la condición de dependencia lineal 



if S(1,3)~=0 && S(2,3)~=0
 disp('Tiene solución')
 disp('La solución es')
 x=[S(1,3) S(2,3)]
 

else
 disp('No existe tal conbinación lineal de v y w para generar u')
 
endif

[x,y]= meshgrid(-20:4:40);

z1= -(x*A(1,1) + A(2,1)*y)/A(3,1); %Vector v 
z2=-(A(1,2)*x + A(2,2)*y)/A(3,2); %Vector w
z3=-( 1*x +8*y)/11 ;
hold on
grid
surf(x,y,z3)
surf(x,y,z1)
surf(x,y,z2)








