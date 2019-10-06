function output=ROI(img,X,Y,Sx,Sy,t)
[rows,cols]=size(img);
output=img;

if X<=0 and X>=rows
    error('Change the value X');
elseif X+Sx>=rows
    error('Change the value of Sx');
elseif Y<=0 and Y>=cols
    error('Change the value of Y');
elseif Y+Sy>=cols
    error('Change the value of Sy');
end
for r=X:X+Sx
    for c=Y:Y+Sy
        M=img(r,c);
       if M>=t
           output(r,c)=255;
       else output(r,c)=0;
    end
end
end