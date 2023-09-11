t=0:0.01:5;
x=sin(2*pi*t);
z=fft(x);

subplot(211);
plot(t,x);
title('Plot of x');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(212);
plot(t,z);
title('Plot of fourier transform');
xlabel('Time');
ylabel('Amplitude');
grid on;