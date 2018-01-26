ianimg = imread('Grid.png');
I = rgb2gray(img);
[height,width] = size(I);
I_bw = im2bw(I);

s=size(I_bw); 
[L,num]=bwlabel(I_bw,8);
box = regionprops(L,'Centroid');
centers = cat(1, box.Centroid);
num
WriteXML(num,centers);