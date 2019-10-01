function imag2plot(arr, leg)
hold off
for n = 1:length(arr)
    rvar = real(arr{n});
    ivar = imag(arr{n});
    plot([0 rvar],[0 ivar], '-*')
    hold on
end
for m = 1:length(leg)
    text(real(arr{m})+.2,imag(arr{m})+.2,leg{m});
    hold on
end
%legend('boxoff');
grid on
grid minor
xlabel('real')
ylabel('imag')

hold off
end