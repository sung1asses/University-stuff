function imag2plot_2(arr, leg)
hold off
for n = 1:length(arr)
    for m = 2:length(arr{n})
        rvar_1 = real(arr{n}{m-1});
        ivar_1 = imag(arr{n}{m-1});
        rvar_2 = real(arr{n}{m});
        ivar_2 = imag(arr{n}{m});
        plot([rvar_1 rvar_2],[ivar_1 ivar_2], '-*')
        hold on
    end
end
for n = 1:length(leg)
    for m = 1:length(leg{n})
        if n==1
            text(real(arr{n}{m})+.2,imag(arr{n}{m})+.2,leg{n}{m});
            hold on
        elseif m~=1 && m~=length(leg{n})
            text(real(arr{n}{m})+.2,imag(arr{n}{m})+.2,leg{n}{m});
            hold on
        end
    end
end
%legend('boxoff');
grid on
xlabel('real')
ylabel('imag')
hold off
end