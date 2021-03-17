close all;
clear all;
clc;

a=imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');

i = rgb2gray(a);
h = fspecial('unsharp');
b = imfilter(i, h);

subplot(1, 2, 1);
imshow(i);
title('Original Image');

subplot(1, 2, 2);
imshow(b);
title('High Pass Filtered Image');