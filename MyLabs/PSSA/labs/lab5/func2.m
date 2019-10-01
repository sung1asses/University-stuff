function f = func2(a,b)
if a>1 & b>1
    disp('a,b>1')%some comment
elseif a>1 & b<=1
    disp('a>1, b<=1')%another one
elseif a<1 & b>=1
    disp('a<1, b>=1')%the last one
else
    disp('a,b<=1')
end

