function output=HSEC(img,X,Y,Sx,Sy,a,b,f,s,l,o)
[rows,cols]=size(img);
output=img;
%  disp(a);
a=double(a);
b=double(b);
o=double(o);
f=double(f);
s=double(s);
l=double(l);


E1=(l-s);
disp(E1);
F1=double(b-a);
disp(F1);
m1=(E1)/(F1);
disp(m1);
E2=(o-l);
disp(E2);
F2=double(f-b);
disp(F2);
m2=(E2)/(F2);
disp(m2);
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
if a<= img(r,c) < b
img(r,c)= ((img(r,c)-a).*(m1))+s; 
elseif b<= img(r,c) < f
    img(r,c)= ((img(r,c)-b).*(m2))+l; 
end
output(r,c)=img(r,c);
    end
      output=[uint8(output)];
end
end
