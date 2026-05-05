rows=3; cols=4;
A=zeros(rows, cols);
for r = 1:rows;
    for c = 1:cols;
       A(r,c) = r + c;
    end
end
disp('Generated Matrix:');
disp(A);