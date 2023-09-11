% %Why we use frequency domain rather than time domain?
% %In case of multiple signals, it is difficult to analyze due to  their
% %overlaping
% 
% clc;
% clear all;
% 
% x = [1 2 3 1 5 8];
% y = [2 2 1 2];
% 
% 
% % l = length(x)+length(y)-1;     %Adding the zeros
% l1 = length(x);
% l2 = length(y);
% 
% % l = max(l1,l2);
% l = length(x)+length(y)-1;   % Lengtyh For CCONV
% 
% a=fft(x,l);   %fft of the first signal
% display(a);
% 
% b=fft(y,l);   %fft of the second signal
% display(b);
% 
% z = a.*b;  %Multiplying the fft of both the signals
% display(z);
% 
% w=ifft(z);    %Taking the inverse fft for getting the actual value
% display(w);
% 
% % m = conv(x,y);  % Convolution using conv function
% m = cconv(x,y);  % Circular Convolution using conv function
% display(m);

clc;    
clear all;

x = [1 2 3 1 5 8];
y = [2 2 1 2];

l1 = length(x);
l2 = length(y);

l = max(l1,l2);

a=fft(x);   %fft of the first signal
display(a);

b=fft(y,l);   %fft of the second signal
display(b);

z = a.*b;  %Multiplying the fft of both the signals
display(z);

w=ifft(z);    %Taking the inverse fft for getting the actual value
display(w);
subplot(211);
plot(w);

m = cconv(x,y,l);  % Circular Convolution using conv function
display(m);
subplot(212);
plot(m);