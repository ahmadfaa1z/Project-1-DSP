%{

PROJECT 1 DSP
Group Members:
Ahmad Faaiz (1721421)
Eiman Salleh (1728753)

%}
% Part 2: DISCRETE TIME SYSTEM

n = [0:1:50]; % Limiting the range of n up to 50

y = cos((2*pi*n)/7);
y1 = cos((4*pi*n)/7);
y2 = cos((pi*n)/7);

% a)
figure(1)
stem(y,'filled');
title('y(n)');
axis tight

% b)
figure(2)
stem(y1,'filled');
title('y1(n)');
axis tight

% c)
figure(3)
stem(y2,'filled');
title('y2(n)');
axis tight