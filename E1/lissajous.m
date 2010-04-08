N=1000; % Number of points
t=1/N*2*pi*(0:N)*2;
us=2.5; % U_S

yfreq=0.5;
xfreq=1;
t=1/N*2*pi*(0:N)*2;
y=us*sin(yfreq*t+1.12);
x=us*sin(xfreq*t);
figure
plot(x, y);

yfreq=1;
xfreq=1;
t=1/N*2*pi*(0:N);
y=us*sin(yfreq*t+1);
x=us*sin(xfreq*t);
figure
plot(x, y);

yfreq=2;
xfreq=1;
t=1/N*2*pi*(0:N);
y=us*sin(yfreq*t+0.3);
x=us*sin(xfreq*t);
figure
plot(x, y);

yfreq=3;
xfreq=1;
t=1/N*2*pi*(0:N);
y=us*sin(yfreq*t+2.3);
x=us*sin(xfreq*t);
figure
plot(x, y);