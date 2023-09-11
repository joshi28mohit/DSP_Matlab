a = [1 2 3 4 5];
b = [7 8 9 2 1];
x=length(a);
y=length(b);
z = zeros(x+y-1);
for i=1:x
    for j=1:y
        z(i+j-1)=z(i+j-1)+a(i).*b(j);
    end
end
display(z);
plot(z);