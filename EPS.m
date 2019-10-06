function output=EPS(img,X,Y,Sx,Sy,WS,TWS)
[rows,cols]=size(img);
%img2=imread(output);
%[rows,cols]=size(img2);
img2 = img;
output=img;

if mod(WS-1,2)==1
    error('change the value of WS')
else
 WC= (WS+1)/2;
 W=(WS-1)/2;
%     if X<=0 and X>=rows
%     error('Change the value X');
%     elseif X+Sx>=rows
%     error('Change the value of Sx');
%     elseif Y<=0 and Y>=cols
%     error('Change the value of Y');
%     elseif Y+Sy>=cols
%     error('Change the value of Sy');
%     end
%     for r=X:X+Sx
%         for c=Y:Y+Sy
%            sum=0;
%            for k=1:WS;
%             for l=1:WS; 
%                    sum=double(sum+double(img(r+k,c+l)));
%                    
% %              disp(sum);
%             end
%            end
%             img(r+WC,c+WC) = (sum/(WS*WS));
% %             disp(img(r+WC,c+WC));
%             output=img(r+WC,c+WC);
%             disp(output);
% %            end
%         end
%         output=uint8(output);
%     end
%  
% end
%         
%   
% 
    if X<=0 and X>=rows
    error('Change the value X');
    elseif X+Sx>=rows
    error('Change the value of Sx');
    elseif Y<=0 and Y>=cols
    error('Change the value of Y');
    elseif Y+Sy>=cols
    error('Change the value of Sy');
    end

    for r=X-W:X+Sx+W
        for c=Y-W:Y+Sy+W
            sum = 0;
            for k = 1:WS
                for l = 1:WS
                    
                    sum=double(sum+double(img(r+k,c+l)));
%                     disp(sum);
                end
            end
            img(r+WC,c+WC) = sum/(double(WS*WS));
%               disp(img(r+WC,c+WC));

if abs(img(r+WC,c+WC)-img2(r+WC,c+WC))< TWS
    
    img(r+WC,c+WC)=img(r+WC,c+WC);
else img(r+WC,c+WC)=img2(r+WC,c+WC);
   
end 
     output(r,c)=[img(r+WC,c+WC)];
        end
        output=uint8(output);
        
    end
end