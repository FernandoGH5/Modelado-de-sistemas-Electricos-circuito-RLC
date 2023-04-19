
t=0:1/500e2:0.01;%100
u=5;

state = pwm_(t,u);

plot(t,state);

function sq_wav = pwm_(t,u)
freq=500;
offset=.5;
amp=.5;
sq_wav=offset+amp*square(2*pi*freq.*t);
sq_wav=sq_wav*u;
end