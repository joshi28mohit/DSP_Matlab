a = imread('panda.jpg'); 
subplot(5,5,1); 
imshow(a);
title('Original Image');
%  
b = rgb2gray(a);
subplot(5,5,2);
imshow(b);
title('IMage Converted to Gray Scale');
%  
c = im2bw(a);
subplot(5,5,3);
imshow(c);
title('IMage converted to binary');
%  
e = a;
e=rgb2gray(e);
subplot(5,5,4);
imhist(e);
title('HIstogram of the image');
%  
f = imcomplement(a);
subplot(5,5,5);
imshow(f);
title('Complement of the image');

resized_img = imresize(a,[1024,2048]);
subplot(5,5,6)
imshow(resized_img);
title('Resizing of the image');


size_find = size(a);  %Finding the size of a image

rotated_img = imrotate(a,45);
subplot(5,5,7)
imshow(rotated_img);
title('Rotation of the image');


brightened_img = a+100;
subplot(5,5,8)
imshow(brightened_img);
title('Brightning of the image');

contrasted_img = a*4;
subplot(5,5,9)
imshow(contrasted_img);
title('Contrast of the image');


flipped_img = flip(a,2);
subplot(5,5,10)
imshow(flipped_img);
title('FLIP of the image');


filter = fspecial('gaussian',[15 15],8); %Te right 12 is used for blurring the image i.e the amplitude  
convolved_img = imfilter(a,filter);
subplot(5,5,11);
imshow(convolved_img);
title('Filtering the image / BLUR');


PSF = fspecial('motion',40,45);
estimated_noise = 0.12;
deblurred_img = deconvwnr(convolved_img,PSF, estimated_noise);
subplot(5,5,12);
imshow(deblurred_img);
title('Deblurring the image / BLUR');