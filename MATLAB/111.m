s = serial('COM5','BaudRate',9600,'Terminator','CR');
fopen(s);
n=1;

X=0:1/200:1/2;
x=X;
ze=[0];
Y=repmat(ze,1,101);
y=Y;

z=0;
i=1;

while(z<1000)
    tic    
    for j=1:101                
      y(j) = str2double(fgetl(s))*5/2^12;
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
delete(s);
clear s;
    

