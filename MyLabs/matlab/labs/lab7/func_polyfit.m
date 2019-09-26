function func_polyfit()
F = @(t) (t-sin(t));
x = -1:.2:1;
y = F(-1:.2:1);
plot(x, y, 'mo-');
hold on;
var_polyfit1 = polyfit(x,y,1);
var_polyval1 = polyval(var_polyfit1,x);
plot(x, var_polyval1, 'rx--');
hold on;
var_polyfit2 = polyfit(x,y,2);
var_polyval2 = polyval(var_polyfit2,x);
plot(x, var_polyval2, 'cs:');
hold on;
var_polyfit3 = polyfit(x,y,3);
var_polyval3 = polyval(var_polyfit3,x);
plot(x, var_polyval3, 'bd-.');
hold on;
var_polyfit4 = polyfit(x,y,4);
var_polyval4 = polyval(var_polyfit4,x);
plot(x, var_polyval4, 'yv--');
legend('original','polyval1','polyval2','polyval3','polyval4');
hold off;
end