clc;
clear all;
close all;

figure('Name','TYCS - 582 - Jaisal Shah','NumberTitle','off');
 p = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
 p1 = rgb2gray(p);
 subplot(1,2,1);
 imshow(p1);
 title('Original Image');
 
 T1 = input('Enter value for lower Threshold: ');
 T2 = input('Enter value for higher Threshold: ');
 j = double(p1);
 [row column] = size(p1);
 
 for x=1:1:row
     for y=1:1:column
         if(j(x, y) > T1 && (j(x, y) < T2))
             j(x, y) = 255;
         else
             j(x, y) = 0;
         end;
     end;
 end;
 subplot(1,2,2);
 imshow(uint8(j)); title('Threshold Image with Background');