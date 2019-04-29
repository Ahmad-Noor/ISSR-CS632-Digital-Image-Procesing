I = imread('pout.tif');

% add 50 on picture
I_add=imadd(I,50);

% Subtract 50 on picture
I_subtract=imsubtract(I,50);

% multiply 2 on picture
I_multiply=immultiply(I,2);

% imdivid 2 on picture
I_divide=imdivide(I,2);

subplot(1,5,1),imshow(I),title('Original');
subplot(1,5,2);imshow(I_add),title('Original Add 50');
subplot(1,5,3);imshow(I_subtract),title('Original Subtract 50');
subplot(1,5,4);imshow(I_multiply),title('Original multiply 2');
subplot(1,5,5);imshow(I_divide),title('Original imdivid 2');