function output=HSG(img,X,Y,Sx,Sy,a,b,s,l)
[rows,cols]=size(img);
output=img;
%  disp(a);
a=double(a);
b=double(b);
s=double(s);
l=double(l);
E=(l-s);
% disp(E);
F=double(b-a);
% disp(F);
m=(E)/(F);
% disp(m);
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
        M=(R+G+B);
        n=R/M;
        g=G/M;
        b=B/M;
        Num=0.5*((n-g)+(n-b));
        Den=((n-g).^2+((n-b).*(g-b))).^0.5;
        T=acosd(Num/(Den+0.00001));
        if b>g
            H=360-T;
        else H=T;
        end
%          disp(H);
        S=100*(1-3.*min([n g b]));
        I=double(M/3);
%              S= ((S-a).*(m))+s;
%  H= ((H-a).*(m))+s;
I= ((I-a).*(m))+s;
         
         pi=22/7;
h=H.*(pi/180);
%  disp(h);
ss=S/100;
% disp(ss);
i=I/255;
% disp(i);
x=(i.*(1-ss));
% disp(x);
num1=ss.*(cos(h));
den1=cos((pi/3)-h);
% disp(den1);
y=(i.*(1+(num1./den1)));
%  disp(y);
z=((3.*i)-(x+y));
    if h<((2*pi)/3)
        
    b=x;
    n=y;
    g=z;
%     disp(n);
    elseif ((4*pi)/3)<=h<(2*pi)
    h=h-((4*pi)/3);
    x=(i.*(1-ss));
% disp(x);
num1=ss.*(cos(h));
den1=cos((pi/3)-h);
% disp(den1);
y=abs(i.*(1+(num1./den1)));
%  disp(y);
z=abs((3.*i)-(x+y));
    g=x;
    b=y;
    n=z;
%     disp(b);
    elseif ((2*pi)/3)<=h<((4*pi)/3)
    h=(h-((2*pi)/3));
    x=(i.*(1-ss));
% disp(x);
num1=ss.*(cos(h));
den1=cos((pi/3)-h);
% disp(den1);
y=(i.*(1+(num1./den1)));
%  disp(y);
z=((3.*i)-(x+y));
    n=x;
    g=y;
    b=z;
%      disp(g);
    
    end
   
output(r,c,1)=(255.*n);
output(r,c,2)=(255.*g);
output(r,c,3)=(255.*b);

        
    
% output(r,c,1)=double(H);
% output(r,c,2)=double(S);
% output(r,c,3)=double(I);



    end
      output=[uint8(output)];
end

end