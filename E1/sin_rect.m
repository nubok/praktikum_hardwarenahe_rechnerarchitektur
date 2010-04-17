function [y] = sin_rect(x)
y = 2*(rem(x+100*pi, 2*pi)<pi)-1;