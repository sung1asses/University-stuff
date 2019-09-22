function f = func_switch()
x = input('enter a number: ');
switch x
    case x==1
        4*sin(x)-1
    case x==2
        log(x)+5
    otherwise
        disp('enter "1" or "2"')
end