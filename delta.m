function D=delta(C1,C2)

K=length(C1);

correspondences=zeros(K,1);

i=1;
while i<=K
    min=inf;
    j=1;while j<=K
                           
            dist=norm(C1(i,:)-C2(j,:));
            if dist<min
                min=dist;
                correspondences(i,1)=j;
            end
            
            j=j+1;
        end
    i=i+1;
end

i=1;bin1='';
while i<=K  
bin1=strcat(bin1,float2bin(C1(i,1)),...
    float2bin(C1(i,2)));
i=i+1;
end

i=1;bin2='';
while i<=K   
bin2=strcat(bin2,float2bin(C2(correspondences(i),1)),...
    float2bin(C2(correspondences(i),2)));
i=i+1;
end

D=sum(bin1~=bin2)/(64*2*K);

end