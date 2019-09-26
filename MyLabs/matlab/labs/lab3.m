x = -2.9:0.1:2.9;
y=randn(1,1000);
hist(y,x);

data = rand(10).*20
maxtemp = max(data)
mintemp = min(data)
plot(1:10,maxtemp)
plot(1:10,mintemp)
plot(1:10,maxtemp,'-',1:10,mintemp,':')
title('title')
xlabel('x')
ylabel('y')
plot(1:10,maxtemp,'M.-')
plot(1:10,mintemp,'M.-')
legend('mintemp')

sampleplot = peaks(25);
surf (sampleplot)

y = @(x) abs(tan(x))+0.1
x = (-2*pi:pi/20:2*pi)
plot(x,y(x))

z = @(x,y) sin(x).*cos(y)
x = 0:pi/2:2*pi
y = 0:pi/2:2*pi
surf(z(x,y'))

r= @(fi) fi./2
fi = 0:pi/6:2*pi
polar(fi, r(fi))

t=1:.5:10
x=t.^3
y=t.^2
surf(x.*y')