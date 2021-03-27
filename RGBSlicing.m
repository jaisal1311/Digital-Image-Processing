%rgb planes
close all;
clear all;
clc;
figure('Name','TYCS - 582 - Jaisal Shah','NumberTitle','off')
img=imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
subplot(1,4,1);
imshow(img);
title('original image')
s=size(img);

redp=img(:,:,1);
greenp=img(:,:,2);
bluep=img(:,:,3);

subplot(1,4,2);
imshow(greenp);
title('green plane');

subplot(1,4,3);
imshow(redp);
title('red plane');

subplot(1,4,4);
imshow(bluep);
title('blue plane')