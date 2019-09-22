function imageVar = getDecart(radius,angle)
  realPart = radius*cosd(angle);
  imagePart = radius*sind(angle);
  imageVar = realPart + imagePart*i
endfunction
%Задавать угол нужно в градусах.
%Пример использования: getDecart(5,45);

