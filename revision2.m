% Convolution using conv function.
a = [1 2 3 4 5];
b = [7 8 9 2 1];
z = conv(a,b);
subplot(3,1,1);
plot(a);
title('Plot of a');

subplot(3,1,2);
plot(b);
title('Plot of b');

subplot(3,1,3);
plot(z);
title('Plot of conv of a and b');


%Convolution without conv
%It is in convolution.m file.
