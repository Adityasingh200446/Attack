n=input('Enter a order n:');
I = zeros(n);
for i = 1 : n;
    for j = 1 : n;
        if i == j
           I(i,j) = 1;
        end
    end
end
disp('Identity Matrix');
disp(I);
