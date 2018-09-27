a=double(rgb2gray(g2a));
b=double(rgb2gray(watermark));
c=conv2(a,b);
img=mat2gray(c);
imshow(img);