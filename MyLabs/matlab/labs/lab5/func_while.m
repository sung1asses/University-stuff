function s = func_while(x)
s=0;n=0;
while abs(x^n/n) > 1.e-10
    s = s + x.^n./n;
    n = n+1;
end
end