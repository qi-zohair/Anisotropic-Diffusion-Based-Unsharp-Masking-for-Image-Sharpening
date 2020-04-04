%% Title: Anisotropic Diffusion-Based Unsharp Masking for Image Sharpening

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen, Mayada A Al-Healy, and Rahma A Hazim, 
% "Anisotropic Diffusion-Based Unsharp Masking for Sharpness Improvement in Digital Images", 
% Journal of Soft Computing and Decision Support Systems, vol. 7, no. 1, (2020): pp. 7-12. 
%% INPUTS
% x --> is a given unclear image
% lambda -- > controls the amount of sharpness enhancement

%% OUTPUT
% x2 --> a sharpened image.


%% Starting implementation %%
clear all; clc; close all;

x=double(imread('3.jpg'));

lambda = 2;
tic; x2 = AD_USM( x, lambda); toc;

figure; imshow(uint8(x)); title('Orignal')
figure; imshow(uint8(x2)); title('ADUSM-Enhanced')
% imwrite(uint8(x2),'AD_USM_L2.jpg')