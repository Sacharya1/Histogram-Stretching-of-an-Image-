
img=imread('baboon_HSEC.pgm');

[r,c]=size(img);

Length=1:256;
Intensity=0:255;
count_intesity=0;

for m=1:256
    for r=50:200
    for c=70:240
            
            if img(r,c)==m-1
                count_intesity=count_intesity+1;
            end
    end
    end
            Length(m)=count_intesity;
            count_intesity=0;
end
% disp(Length);

bar(Intensity,Length); 

grid on;
ylabel('intensity levels');
xlabel('intensity'); title('Histogram')