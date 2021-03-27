clc;
clear all;
close all;

 p = imread('C:\Users\Jaisal Shah\Desktop\TYCS-582\College-Stuff\Sem VI\DIP\Practicals\raw.png');

 subplot(1,2,1);
 imshow(p);
 title('Original Image');
 
 T = input('Enter threshold value: ');
 [row column] = size(p);
 
 for x=1:row
     for y=1:column
         if((p(x, y)) < T)
             p(x, y) = 0;
         else
             p(x, y) = 255;
         end;
     end;
 end;
 subplot(1,2,2);
 imshow(p); title('Threshold Image');