%Practical 2 - Appply 2D DFT on an image

clc;
clear all;
close all;
figure('Name','TYCS - 582 - Jaisal Shah','NumberTitle','off');
a = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
img = double(a);
subplot(1, 2, 1);
imshow(a);
title('Original image');
[row col] = size(a);
dft1 = size(a);
for x = 1: row
    for y = 1:col
        b(x, y) = img(x ,y) * ((-1) ^ (x + y));
    end
end

for x = 1: row
    for y = 1:col
        dft1(x, y) = b(x, y) * exp(-1 * 1i * 2 * pi * (((x * x) / row) + ((y * y)/ col)));        
    end
end

subplot(1, 2, 2);
imshow(real(dft1));
title('DFT');       