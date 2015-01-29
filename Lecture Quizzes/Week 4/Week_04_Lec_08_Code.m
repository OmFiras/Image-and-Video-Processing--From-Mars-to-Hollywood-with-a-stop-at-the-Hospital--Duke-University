RGB = imread('saturn.png');
I = rgb2gray(RGB);
J = imnoise(I,'gaussian', 0, 0.005);
K = wiener2(J, [10, 10]);
H = fspecial('disk', 10);
blurred = imfilter(J, H, 'replicate');
figure, imshow(RGB);
figure, imshow(I);
figure, imshow(J);
figure, imshow(H);
figure, imshow(blurred);
figure, imshow(K);