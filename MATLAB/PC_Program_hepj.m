s = serial('com4','BaudRate',9600,'Terminator','CR');
fopen(s);   %open port
n=1;

X=0:1/200:1/2;
x=X;
ze=[0];
Y=repmat(ze,1,101);
y=Y;

%intialize array for plot

z=0;
i=1;

while(z<1000)
   %a long enough while loop to keep reading the serial input and plot
    for j=1:101                
      y(j) = str2double(fgetl(s))*5/2^12;       %use math to scale the digital input
    end  
    plot(x,y);  %plot the values on the graph
    xlabel('t');
    ylabel('V');
    title('Scope');
    drawnow;
end

%close and end
fclose(s);
delete(s);
clear s;
    

