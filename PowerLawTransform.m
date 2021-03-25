% Power Law Transformation

close all;
clear all;
clc;
figure('Name','TYCS - 582 - Jaisal Shah','NumberTitle','off');
img1 = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
img = rgb2gray(img1);
subplot(1, 2, 1);
imshow(img);
title('OG IMage');

s = size(img);
c = 1;
img = double(img);
gamma = 0.5;
for x = 1: s(1)
    for y = 1: s(2)
        j(x, y) = c * (img(x, y) ^ gamma);
    end;
end

subplot(1, 2, 2);
imshow(j, []);
title('Power Law Transform Image');