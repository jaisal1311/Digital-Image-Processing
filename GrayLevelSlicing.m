clc;
clear all;
close all;

 p = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');
 p1 = rgb2gray(p);
 subplot(1,2,1);
 imshow(p1);
 title('Original Image');
 
 T = input('Enter threshold value: ');
 [row column] = size(p1);
 
 for x=1:row
     for y=1:column
         if((p1(x, y)) < T)
             p1(x, y) = 0;
         else
             p1(x, y) = 255;
         end;
     end;
 end;
 subplot(1,2,2);
 imshow(p1); title('Threshold Image');