%histogram

close all;
clear all;
clc;
figure('Name','TYCS - 582 - Jaisal Shah','NumberTitle','off')
a = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');

a1 = double(a);
a2 = rgb2gray(uint8(a1));

subplot(1, 2, 1);
imshow(uint8(a2));
title('OG IMage');

[row col] = size(a2);
h = zeros(1, 256);
for m = 1: 1: row
    for n = 1: 1: col
        t = a2(m, n);
        h(t + 1) = h(t + 1) + 1;
    end
end

subplot(1, 2, 2);
bar(h);
title('Histogram');

