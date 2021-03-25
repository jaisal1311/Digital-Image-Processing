close all;
clear all;
clc;

figure('Name','TYCS - 582 - Jaisal Shah','NumberTitle','off')
a=imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
i = rgb2gray(a);
b = imnoise(i, 'gaussian');
h1 = 1 / 9 * ones(3, 3);
h2 = 1 / 25 * ones(5, 5);

output1 = conv2(b, h1, 'same');
output2 = conv2(b, h2, 'same');

subplot(2, 2, 1);
imshow(i);
title('Original Image');

subplot(2, 2, 2);
imshow(b);
title('Noised Image');

subplot(2, 2, 3);
imshow(uint8(output1));
title('Image smoothened with 3*3 mask');

subplot(2, 2, 4);
imshow(uint8(output2));
title('Image smoothened with 5*5 mask');