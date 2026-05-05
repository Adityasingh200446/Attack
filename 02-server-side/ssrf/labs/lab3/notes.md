rows=3; cols=4;

A=zeros(rows, cols);

for r = 1:rows;

&#x20;   for c = 1:cols;

&#x20;      A(r,c) = r + c;

&#x20;   end

end

disp('Generated Matrix:');

disp(A);

