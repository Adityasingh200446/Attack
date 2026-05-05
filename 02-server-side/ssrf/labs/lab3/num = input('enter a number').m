num = input('enter a number');
n_str = num2str(abs(num));
sumDigits = 0;
tempNum = abs(num);
for i = 1:length(n_str);
    digits = mod(tempNum. 10);
    sumdigits = sumDigits + digits;
    tempNum = floor(tempNum / 10);
end
fprint('Sum of digits : %d\n',sumDigits);