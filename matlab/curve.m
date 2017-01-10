clear;
%%{
% curve90 (fast)
v_const = 924;
angle = pi/2;
%}
%{
% curve45 (fast)
v_const = 2000*90/(147.0910242301666-60.9243357157356);
angle = pi/4;
%}
%{
% curveV90 (fast)
v_const = 1306.7;
angle = pi/2;
%}
%{
% curve135 (fast)
v_const = 872*180/(52.5251+126.8067);
angle = pi*3/4;
%}
%{
% curve180 (fast)
v_const = 1300*180/168.4119;
angle = pi;
%}

omega_max = 6 * pi;
dt = 1/v_const/100;

T = angle/(1/2 - 1/(4*pi)*cos(2*pi-pi/2))/omega_max;
t = 0:dt:T;
omega = omega_max * (0.5 + 0.5*sin(2*pi/T*t-pi/2));
theta = omega_max * (1/2*t - T/(4*pi)*cos(2*pi/T*t-pi/2));

pos_cur = [0;0;0];
pos = pos_cur';

for i = 1:size(theta, 2)
    R = [cos(theta(i)), -sin(theta(i)), 0;
        sin(theta(i)), cos(theta(i)), 0
        0, 0, 1];
    pos_cur = pos_cur + R*[v_const; 0; 0]*dt;
    pos_cur(3) = theta(i);
    pos = [pos; pos_cur'];
end

subplot(4,1,1);
plot(t, omega, '.', 'MarkerSize', 6); grid on;
title('äpë¨ìx', 'FontSize', 11);
xlabel('t', 'FontSize', 11);
ylabel('\omega', 'FontSize', 11);
subplot(4,1,2);
plot(t, theta, '.', 'MarkerSize', 6); grid on;
title('épê®äp', 'FontSize', 11);
xlabel('t', 'FontSize', 11);
ylabel('\theta', 'FontSize', 11);

subplot(4,1,[3,4]);
hold off;
plot(pos(:,1),pos(:,2), '.', 'MarkerSize', 6);
title('à íu', 'FontSize', 11);
grid on;
xlabel('x', 'FontSize', 11);
ylabel('y', 'FontSize', 11);

pos(end, :)

v_const

%pos(end, 1)-(180-pos(end, 2))
%pos(end, 1)-(180-pos(end, 2))

data = pos(1:100:size(pos, 1), :);
dlmwrite('data.csv',data,'precision','%.8f');
