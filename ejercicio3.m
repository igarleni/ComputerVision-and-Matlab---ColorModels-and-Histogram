function Hsum(imageRGB, cte)
    imageHSV = rgb2hsv(imageRGB);
    imageHSV(:,:,1) = imageHSV(:,:,1) + cte;
    figure, imshow(imageHSV), title('Image HSV');
end