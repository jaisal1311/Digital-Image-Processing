%pseudocoloring
close all;
clear all;
clc;
figure('Name','TYCS - 582 - Jaisal Shah','NumberTitle','off')
img=imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
subplot(1,2,1);
imshow(img);
title('original image')
s=size(img);

redp=img(:,:,1);
greenp=img(:,:,2);
bluep=img(:,:,3);

OP(:,:,1)= greenp;
OP(:,:,2)= bluep;
OP(:,:,3)= redp;
subplot(1,2,2);
imshow(OP);
title('Pseudocoloring');