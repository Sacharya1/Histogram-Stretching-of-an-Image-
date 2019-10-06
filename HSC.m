function output=HSC(img,X,Y,Sx,Sy,a,b,s,l)
[rows,cols]=size(img);
output=img;
%  disp(a);
a=double(a);
b=double(b);
s=double(s);
l=double(l);


E=(l-s);
disp(E);
F=double(b-a);
disp(F);
m=(E)/(F);
disp(m);
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

R= img(r,c,1);
        R=double(R);
        
        G= img(r,c,2); 
        G=double(G); 
        B= img(r,c,3);
         B=double(B);
         output(r,c,1)=double(((R-a).*(m))+s);
output(r,c,2)=double(((G-a).*(m))+s);
output(r,c,3)=double(((B-a).*(m))+s);
   end
      output=[uint8(output)];
end

end