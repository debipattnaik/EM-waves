close all
clear all
% Program to show Faraday's law"
%Debi Prasad Pattnaik, www.debipattnaik.com
x = linspace(0,5,100);
y = linspace(0,5,100);
z = linspace(0,5,100);
t=linspace(0,5,100);

[X, Y, Z] = meshgrid(x, y, z);
Ex=4*(cos(2*pi*Z+(35*pi)/180));
Ey = 0*X;
Ez = 0*X;
[Bx, By, Bz, V] = curl(X, Y, Z, Ex, Ey, Ez);
Eplot = 0*x;
Bplot = 0*x;
for i=1:100  
    Eplot(i) = mean(mean(Ex(:,:,i),1),2);
    Bplot(i) = mean(mean(By(:,:,i),1),2);
   end

plot3(0*x, y, Eplot, 'r'); 
hold on
h = quiver3(0*x(1:3:100), y(1:3:100), 0*z(1:3:100), 0*x(1:3:100), 0*y(1:3:100), Eplot(1:3:100), 0, 'b', 'LineWidth', 1);
hold on
plot3(Bplot, y, 0*z, 'g');

grid on