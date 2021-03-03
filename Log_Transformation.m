% Log Transformation

close all;
clear all;
clc;
img1 = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
img = rgb2gray(img1);
subplot(1, 2, 1);
imshow(img);
title('OG IMage');

L = 255;
c = L / log10(1 + L);
d = c * (log10(1 + double(img)));
a = uint8(d);

subplot(1, 2, 2);
imshow(uint8(a));
title('Transformed Image');