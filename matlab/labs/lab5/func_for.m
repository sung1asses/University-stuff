function f = func_for()
i=1;
for y = 1.5:0.5:4
    f(1,i) = 4.*(1-y.^2);
    i = i+1;
end

