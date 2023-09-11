clc; 
syms x
sum=0;
T = input('Enter the time period: ');
y=exp(x);
a0=(1/T)*int(y,x,-T,T); 
for n=1:10
    an=(1/T)*int(y*cos(n*x),x,-T,T); 
    bn=(1/T)*int(y*sin(n*x),x,-T,T);    
    sum=sum+(an*cos(n*x)+bn*sin(n*x)); 
end 
ezplot(x,y,[-T,T]); 
grid on;hold on;  
ezplot(x,(sum+a0/2),[-T,T]);