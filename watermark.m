vec = @(x)reshape(x,numel(x),1);

image1 = imread('peppers.png'); % IPT sample image (don't call it image, MATLAB stock function)
[m,n,k] = size(image1); % get size of your image
image2 = zeros(m,n,k,class(image1)); %preallocate second image

for ii = 1:3;
  image2(:,:,ii) = reshape(idct(dct(vec(image1(:,:,ii)))),m,n);
  %vector of channel -> dct -> idct -> reshaped to original size
end

figure(1)
imshow(image1, [])
title('Original Image')

figure(2)
imshow(image2, [])
title('Image2')

