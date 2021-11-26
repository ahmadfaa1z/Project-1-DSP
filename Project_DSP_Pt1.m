%{

PROJECT 1 DSP
Group Members:
Ahmad Faaiz (1721421)
Eiman Salleh (1728753)

%}
% Part 1: DISCRETE SYSTEM - MOVING AVERAGE FILTER

%% a) 24-point Moving Average Filter
%{
load bostemp
days = (1:31*24)/24;
figure(1)
plot(days,tempC);
title('Original Signal')
axis tight

avg_point = 24;
coeff24hMA = ones(1, avg_point)/avg_point;
avg24_TempC = filter(coeff24hMA, 1, tempC);
fDelay = (length(coeff24hMA)-1)/2;

figure(2)
plot(days,[tempC avg24_TempC]);
title('24-point Filtered Signal with Delay')
axis tight

figure(3)
plot(days,tempC,days-fDelay/24,avg24_TempC);
title('24-point Filtered Signal No Delay')
axis tight
%}

%% b) 50-point Moving Average Filter using convolution

load bostemp
days = (1:31*24)/24;
plot(days, tempC);
hold on
title('50-point Moving Average Filter')

point = 50;
Amp_point = ones(1, point)/point;
 
y_axis_data = tempC';  % to retrieve y-axis data

k = conv(y_axis_data,Amp_point); % size(k) = [1 793] which is not the same length with original data

w = conv(y_axis_data,Amp_point,'same'); %convolution of ydata with array of "point". % 'same' is used to ensure the length of % convolution is the same as original data
plot(days,w)

axis tight
hold off