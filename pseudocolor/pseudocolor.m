%%
%Pseudocolor: Transformacion del nivel de gris a color
%la idea consiste en realizar tres transforamciones independientes del
%nivel de gris en colores separados de rojo, verde y azul para cualquier
%pixel de la imagen original. 
close all;
I=imread('carretera.jpg'); 
I=rgb2gray(I)
Id=im2double(I);

alpha = 2*pi;
%canal rojo
aux = cos(alpha .* Id+pi/2);
R= im2uint8(aux.*aux);

%canal verde
aux=cos(alpha .* Id+pi/4);
G= im2uint8(aux.*aux);

%canal azul
aux=sin(alpha .* Id+pi/2);
B=im2uint8(( aux.*aux));


Color = cat(3,R,G,B);
figure, imshow(I),title('Original');
figure, imshow(Color), title('Pseudocolor');
