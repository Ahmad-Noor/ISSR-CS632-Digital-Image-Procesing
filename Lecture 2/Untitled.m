
%%%%%%%%%%%%%%% diff

% img1=imread('D:\issr\CS 632\images\DIP3E_Original_Images_CH02\Fig0228(a)(angiography_mask_image).tif');
% img2=imread('D:\issr\CS 632\images\DIP3E_Original_Images_CH02\Fig0228(b)(angiography_live_ image).tif');
% var=double(img1)-double(img2);
 
% sub=imsubtract(img1,img2);
%imshow(sub);
% imshow(img1-img2);% [] ==>return 
%%%%%%%%%%%%%%%%  times
% img1=imread('D:\issr\CS 632\images\DIP3E_Original_Images_CH02\Fig0230(a)(dental_xray).tif');
% img2=imread('D:\issr\CS 632\images\DIP3E_Original_Images_CH02\Fig0230(b)(dental_xray_mask).tif');
% mult=double(img1).*double(img2);
% imshow(mult,[]);% [] ==>return 

%partial compliment
img=imread('D:\issr\CS 632\images\DIP3E_Original_Images_CH02\Fig0232(a)(partial_body_scan).tif');
imgCompl=imcomplement(img);
less128=(img<128);
than128=(img>128);
[row,col]=find(less128~=0);
% for on index for row and col 
% [row,col]=find(less128~=0);
% IC=img;
% for i=1 : size(row)
%     IC(row(i),col(i))=255-IC(row(i),col(i));       
% end
% 
% subplot(1,3,1),imshow(img);
% subplot(1,3,2),imshow(imgCompl);
% subplot(1,3,3),imshow(IC);

[row,col]=find(less128~=1);
IC=img;
for i=1 : size(row)
    IC(row(i),col(i))=255-IC(row(i),col(i));       
end

subplot(1,3,1),imshow(img);
subplot(1,3,2),imshow(imgCompl);
subplot(1,3,3),imshow(IC);




