clear all();
close all();

% Take Images from Image Folder

img1 = imread('cameraman.tif');
img2 = imread('couple.tiff');

%size of img1 is 256*256
size(img1)

%size of img2 is 512*512
size(img2)

% Identify that img2 size is greater than img1 so we have to crop it to get same size
img3 = imcrop(img2,[1,1,255,255]);

% Now we can fuse the images
img4 = img1-img3;

%Plot if to see the result
subplot(2,2,1)
imshow(img1)
subplot(2,2,2)
imshow(img3)
subplot(2,2,3)
imshow(img4)
