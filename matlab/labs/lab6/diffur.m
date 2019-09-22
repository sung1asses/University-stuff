function dd = diffur()
a = 0;  %задаем левую - a 
b = 1;  %и правую – b границы 
h = 0.1;    %задаем шаг интегрирования 
m = (a+b)/h;    %задаем кол-во итерации;
t = a:h:b;  %рассчитаем значения аналитического решения на заданном интервале

y(1) = 0;   %начальное условие
F = @(x,y) (x.^2 - 2.*y);
y_Euler(1) = y(1);
for i=1:m
   y_Euler(i+1) = y_Euler(i)+h*F(t(i), y_Euler(i));
end
plot(t,y_Euler,'-k');
hold on;

y_RK(1)=y(1);
for i=1:m     
    k1=F(t(i),y_RK(i));
    k2=F(t(i)+0.5*h,y_RK(i)+0.5*h*k1);     
    k3=F(t(i)+0.5*h,y_RK(i)+0.5*h*k2);     
    k4=F(t(i)+h,y_RK(i)+h*k3); 
    y_RK(i+1)=y_RK(i)+(h/6)*(k1+2*k2+2*k3+k4); 
end
plot(t,y_RK,'--b');
hold on;

[t,y_Procedure] = ode45(@(x,y) (x.^2 - 2.*y),[a,b],y(1));

plot(t,y_Procedure, '*:m');
legend('Euler','RK','ode45');
hold off;

dd = [y_Euler;y_RK] %y_procedure Засунуть не получится, так как там больше столбцов...

end