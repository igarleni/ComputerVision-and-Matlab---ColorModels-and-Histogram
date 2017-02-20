function colorCycle(imageRGB)
    imageHSV = rgb2hsv(imageRGB);
    frame = imageHSV;
    for i = 1:255
        imageHSV(:,:,1)= mod(imageHSV(:,:,1)+i/255.0,0.99);
        mov(i)=im2frame(hsv2rgb(imageHSV));
    end
    movie(mov);
end