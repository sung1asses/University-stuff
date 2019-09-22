function [radius,angle] = getPolar(imageVar)
  radius = sqrt(real(imageVar)^2+imag(imageVar)^2)
  angle = atand(imag(imageVar)/real(imageVar))
endfunction
%Просто вписываете своё комплексное число. Обязательно используйте i, а не j.
%Пример использования: getPolar(1+1*i);