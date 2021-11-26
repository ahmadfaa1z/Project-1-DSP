%{

PROJECT 1 DSP
Group Members:
Ahmad Faaiz (1721421)
Eiman Salleh (1728753)

%}
% Part 4: CONVOLUTION IN 1D

%% a. (x+3)(x+12)

u1 = [1 3];
v1 = [1 12];
a = conv(u1,v1); % [1 15 36] >> (x^2 + 15x + 36)

%% b. (x+2)(x^2+3x-6)

u2 = [1 2];
v2 = [1 3 -6];
b = conv(u2,v2);  % [1 5 0 -12] >> (x^3 + 5x^2 - 12)