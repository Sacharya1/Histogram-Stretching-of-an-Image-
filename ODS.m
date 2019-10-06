function output=ODS(img,X,Y,Sx,Sy,WS)
[rows,cols]=size(img);
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
                    
                    sum=double(sum-double(img(r+k-2,c))+double(img(r+k+3,c)));
%                     disp(sum);
                end
            end
            img(r+WC,c+WC) = (double(sum))/(double(WS));
%              disp(img(r+WC,c+WC));
         output(r,c)=[img(r+WC,c+WC)];
        end
        output=uint8(output);
        
    end
end