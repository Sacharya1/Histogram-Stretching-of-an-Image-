function output=Colb(img,X,Y,Sx,Sy,CR,CG,CB,TC)
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
        Red= img(r,c,1);
        
        Green= img(r,c,2); 
        
        Blue= img(r,c,3);
       
        A=Red-CR;
        A=double(A);
%         disp(A);
        B=Green-CG;
        B=double(B);
        C=Blue-CB;
        C=double(C);
        A1 = mtimes(A,A);
%         disp(A1);
        B1= mtimes(B,B);
%         disp(B1)
        C1= mtimes(C,C);
        
        E = A1+B1+C1;
%         disp(E);
        D= sqrt(double(E));
%         disp(D);
        
        
       if D>=TC
           output(r,c,1)=0;
           output(r,c,2)=0;
           output(r,c,3)=0;
           
       else output(r,c,1)=255;
           output(r,c,2)=255;
           output(r,c,3)=255;
       end
    end
output=uint8(output);
end