close all;
clear;
% sum two images
IA = imread('cameraman.tif');
ID = imread('rice.png');
sum=imadd(IA,ID);% IA+ID

subplot(5,3,1),imshow(IA); 
subplot(5,3,2),imshow(ID); 
subplot(5,3,3),imshow(sum) ,title('sum'); 

% subtract two images
hands1=imread('hands1.jpg');
hands2=imread('hands2.jpg');

% Convert RGB to GRAY
hands1_gray=rgb2gray(hands1);
hands2_gray=rgb2gray(hands2);
subtract=imsubtract(hands1_gray,hands2_gray);% hands1-hands2;

subplot(5,3,4),imshow(hands1_gray); 
subplot(5,3,5),imshow(hands2_gray); 
subplot(5,3,6),imshow(subtract),title('subtract'); 
 
% image hands1 layers
R = hands1(:,:,1);
G = hands1(:,:,2);
B = hands1(:,:,3); 

subplot(5,3,7),imshow(R),title('Red'); 
subplot(5,3,8),imshow(G),title('Green'); 
subplot(5,3,9),imshow(B),title('Blue'); 

% subtract two images - another example 
i1=imread('D:\issr\CS 632\images\DIP3E_Original_Images_CH02\Fig0228(a)(angiography_mask_image).tif');
i2=imread('D:\issr\CS 632\images\DIP3E_Original_Images_CH02\Fig0228(b)(angiography_live_ image).tif');
i3=i1+i2;

subplot(5,3,10);imshow(i1); 
subplot(5,3,11);imshow(i2); 
subplot(5,3,12);imshow(i3); 

% add noise on image
m_zeros=zeros(256,256,50);% Rows ,Cols , array count (Dimensions)
noise=imnoise(IA,'gaussian', 0.02);
subplot(5,3,13);imshow(noise); 



