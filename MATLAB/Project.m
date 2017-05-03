s = serial('COM5','BaudRate',9600,'Terminator','CR');
fopen(s);

x=0:1/200:1/2;
ze=[0];
y=repmat(ze,1,100);


z=0;
i=1;

while(1==1)
    tic    
    for j=1:100                
      y(j) = str2double(fgetl(s))*5/2^8;
    end  
    plot(x,y);
    xlabel('t');
    ylabel('V');
    title('Scope');
    drawnow;
    toc
    y=Y;
    x=X;    
    z=z+1;
end

fclose(s);
    

