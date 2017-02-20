function imgChroma = chroma_key2(imageRGB,background,inity,initx,red,green,blue)
    imHSV = rgb2hsv(imageRGB);
    A = 0.5-0.3333;
    range = mod(imHSV(:,:,1) + A, 1.0); 
    gr = 1-2*abs(range - 0.5);
    [indexX, indexY] = find(gr < 0.82);
    
    imgChroma = background;
    for i=1:length(indexX)
        imgChroma(indexX(i)+initx,indexY(i)+inity,:) = imageRGB(indexX(i),indexY(i),:);
    end
    figure, imshow(imgChroma);
end

