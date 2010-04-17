x=-2.5:0.001:2.5;

y = -2.5*sin_rect(x*2*pi*0.5*1.6780)

figure
current = y(1);
xp=[];
yp=[];

figure
hold on
for i=1:length(x)
    if (current == y(i))
        xp=[xp, x(i)];
        yp=[yp, y(i)];
    else
        plot(xp, yp);
        current = y(i);
        xp=[];
        yp=[];
    end
end
axis([-2.5 2.5 -2.7 2.7])
axis equal

y=-2.5*sin(x*2*pi*0.5*1.6780);

figure
plot(x, y);
axis equal


% Lissajous-Figuren
N=1000; % Number of points
us=2.5; % U_S

yfreq=0.5;
xfreq=1;
t=1/N*2*pi*(0:N)*2;
y=us*sin(yfreq*t+1.12);
x=us*sin(xfreq*t);
figure
axis equal
plot(x, y);

yfreq=1;
xfreq=1;
t=1/N*2*pi*(0:N);
y=us*sin(yfreq*t+1);
x=us*sin(xfreq*t);
figure
axis equal
plot(x, y);

yfreq=2;
xfreq=1;
t=1/N*2*pi*(0:N);
y=us*sin(yfreq*t+0.3);
x=us*sin(xfreq*t);
figure
axis equal
plot(x, y);

yfreq=3;
xfreq=1;
t=1/N*2*pi*(0:N);
y=us*sin(yfreq*t+2.3);
x=us*sin(xfreq*t);
figure
axis equal
plot(x, y);