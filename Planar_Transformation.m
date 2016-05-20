function planar_Transformation

addpath( genpath('.') );
close all; 

I = checkerboard(10,2);
%I = imread('book.jpg'); 
imshow(I)
title('Information theory,Inference & Learning Algorithm')

% As in Projective Transformation we have nine parameter in this T is matrix which has those parameter. 
T = [1  0  0.008;
     1  1  0.01;
     0  0  1   ];
t_proj = projective2d(T);
I_projective = imwarp(I,t_proj,'FillValues',.3);

figure
imshow(I_projective),title('projective')



end