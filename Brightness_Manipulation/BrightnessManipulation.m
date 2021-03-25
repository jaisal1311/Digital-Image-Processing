close all;
clear all;
clc;

figure('Name','Simulation Plot Window','NumberTitle','off')
img1 = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');

subplot(2, 3, 1);
imshow(img1);
title('OG Image');

B = double(img1) - 140;
subplot(2, 3, 2);
imshow(uint8(B));
title('Brightness Decreased');

B = double(img1) + 140;
subplot(2, 3, 3);
imshow(uint8(B));
title('Brightness Decreased');

img_bw = rgb2gray(img1);
subplot(2, 3, 4);
imshow(img_bw);
title('B/W Image');

B = double(img_bw) - 140;
subplot(2, 3, 5);
imshow(uint8(B));
title('Brightness Decreased');

B = double(img_bw) + 140;
subplot(2, 3, 6);
imshow(uint8(B));
title('Brightness Decreased');