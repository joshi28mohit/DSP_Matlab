t=0:0.1:5;
x=sin(2*pi*t);

subplot(4,5,1);
plot(t,x);
grid;
title('Sine Signal using Plot');
xlabel('Time');
ylabel('Amplitude');

subplot(4,5,2);
stem(t,x);
grid;
title('Sine Signal using Stem');
xlabel('Time');
ylabel('Amplitude');

subplot(4,5,11);
stairs(t,x);
grid;
title('Sine Signal using Stairs');
xlabel('Time');
ylabel('Amplitude');

%shifting:
subplot(453);
plot(t+2,x);
grid;
title('shifting');
xlabel('Time');
ylabel('Amplitude');

%time scaling:
subplot(454);
plot(2*t,x);
grid;
title('time scaling');
xlabel('Time');
ylabel('Amplitude');

%amplitude scaling:
subplot(455);
plot(t,2*x);
grid;
title('amplitude scaling');
xlabel('Time');
ylabel('Amplitude');

%folding:
subplot(456);
plot(t/2,x);
grid;
title('folding');
xlabel('Time');
ylabel('Amplitude');

t=0:0.1:5;
y=cos(2*pi*t);

%addition:
subplot(457);
a=x+y;
plot(t,a);
grid;
title('Addition');
xlabel('Time');
ylabel('Amplitude');

%subtraction:
subplot(458);
s=x-y;
plot(t,s);
grid;
title('Subtraction');
xlabel('Time');
ylabel('Amplitude');

%multiplication:
subplot(459);
m=x.*y;
plot(t,m);
grid;
title('multiplication');
xlabel('Time');
ylabel('Amplitude');

%division:
subplot(4,5,10);
d=x./y;
plot(t,d);
grid;
title('division');
xlabel('Time');
ylabel('Amplitude');

subplot(4,5,12);
bar(x);
title('Sine Signal using Bar');
xlabel('Time');
ylabel('Amplitude');

subplot(4,5,13);
polar(x);
title('Sine Signal using Polar PLot');

n=0:5; %For printing the unit step function.

%Sampling:
%fs=input('Enter the Sampling Rate/Frequency: ');
fs=10000; %Sampling Rate;
t1=0:1/fs:0.04;
x1=sin(180*pi*t1);
y=heaviside(x1);
%subplot(4,5,14);
stem(t1,x1.*y);
title('Sine Signal Sampled');
xlabel('Time');
ylabel('Amplitude');