function [value,surf] = value(len,br,dep)
value = len*br*dep;
surf = (len*br+br*dep+len*dep)*2;
end