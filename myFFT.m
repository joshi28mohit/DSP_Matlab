x = [1 1 2 2];
% function d = myFFT(x)
% k=sqrt(-1);
% y=sum(0,N-1,x.*exp^-j*2*pi*k*n/N);
N=length(x);
z=[];
y=0;
for j=0:N-1
    for k=0:N-1
        y=y+x(k+1).*exp((-1i*2*pi*j*k)/N);
    end
    z(j+1)=y;
    y=0;
end
display(z);
subplot(211);
plot(abs(z));
subplot(212)
plot(angle(z));
% end