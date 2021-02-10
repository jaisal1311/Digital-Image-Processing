close all;
clear all;
clc;

img1 = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');

subplot(1, 2, 1);
imshow(img1);
title('OG Image');

B = double(img1) * (2);
subplot(1, 2, 2);
imshow(uint8(B));
title('Contrast Adjusted');

