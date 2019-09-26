function [surf,value] = sphere(r)
    value = 4/3*pi*r.^3;
    surf = 4*pi*r.^2;
end

