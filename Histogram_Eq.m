close all;
clear all;
clc;

a=imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
a1 = double(a);
a2 = rgb2gray(uint8(a1));

[row col] = size(a2);

c = row * col;
h = zeros(1, 300);
z = zeros(1, 300);

for m = 1 : 1 :row
    for n = 1 : 1 : col
        t = a2(m, n);
        h(t + 1) = h(t + 1) + 1;
    end
end

pdf = h / c;
cdf(1) = pdf(1);
for x = 2 : 1 : 256
    cdf(x) = pdf(x) + cdf(x - 1);
end;

new = round(cdf * 256);
new = new + 1;

for p = 1 : 1 : row
    for q = 1 : 1 : col
        temp = a2(p,q) + 1;
        b(p,q) = new(temp);
        t = b(p,q);
        z(t+1) = z(t+1) + 1;
    end;
end;

b = b - 1;

subplot(2,2,1);
imshow(uint8(a2));
title('Original Image');

subplot(2,2,2);
bar(h);
title('Histogram of Original Image');

subplot(2,2,3);
imshow(uint8(b));
title('Histogrammed Image');

subplot(2,2,4);
bar(z);
title('Eq. Histogram Image');