% Generalized Fourier Series Expansion
clear all; close all;

x = linspace(0,pi,100);
y = linspace(0,pi,100);
% function f(x) = x
y_exact = sin(3*x);
% expansion in gen FS from Lecture 9

y_GFS1 = 0;
for n = 1 : 3
      y_GFS1 = y_GFS1 + 3.*sin(n*pi)/(n^2 -9).*sin(n*x).*exp(-n*y).*(exp(2*n*y)-1) ;
end;

y_GFS2 = 0;
for n = 1 : 10
      y_GFS2 = y_GFS2 + 3.*sin(n*pi)/(n^2 -9).*sin(n*x).*exp(-n*y).*(exp(2*n*y)-1);
end;

%plot solution
figure; hold on;
plot(x,y_exact,'-k','LineWidth',4);
plot(x,y_GFS1,'b--', 'LineWidth',4);
plot(x,y_GFS2,'r.-', 'LineWidth',4);
set(gca,'fontsize',16);
title('Generalized Fourier Series');
xlabel('x');
ylabel('y');
legend('Exact','FS 3 terms', 'FS 10 terms','Location','NorthEast');
axis([0,2*pi,-8,8]);
hold off;