clear;
%{
% curve45 (fast)
v_const = 2089.04;
angle = pi/4;
%}
%{
% curve45_45 (fast)
v_const = 1306.491;
angle = pi/2;
%}
%{
% curve45_S_45 (fast)
v_const = 2766.8;
angle = pi/2;
%}
%{
% curve90 (fast)
v_const = 978.16;
angle = pi/2;
%}
%{
% curve135 (fast)
v_const = 1056.21;
angle = pi*3/4;
%}
%{
% curve180 (fast)
v_const = 1623.31;
angle = pi;
%}

omega_dot = 72 * pi;
omega_max = 6 * pi;

dt = 1/v_const/100;
T1 = omega_max/omega_dot*pi/2;
T2 = angle/omega_max-T1;

if T2 > 0
    t1 = 0:dt:T1;
    omega_1 = omega_max * (0.5 + 0.5*sin(2*pi*t1/(2*T1)-pi/2));
    theta_1 = omega_max * (1/2*t1 - 1/2*(2*T1)/(2*pi)*cos(2*pi*t1/(2*T1)-pi/2));
    t2 = T1:dt:T1+T2;
    omega_2 = 0*t2+omega_max;
    theta_2 = (t2-T1)*omega_max + omega_max*T1/2;
    t3 = T1+T2:dt:2*T1+T2;
    omega_3 = omega_max * (0.5 + 0.5*sin(2*pi*(t3-T2)/(2*T1)-pi/2));
    theta_3 = omega_max * (1/2*(t3-T2) - 1/2*(2*T1)/(2*pi)*cos(2*pi*(t3-T2)/(2*T1)-pi/2))+ omega_max*T2;
    
    omega = [omega_1, omega_2, omega_3];
    theta = [theta_1, theta_2, theta_3];
    t = [t1, t2, t3];
else
    T = angle/(1/2)/omega_max;
    t = 0:dt:T;
    omega = omega_max * (0.5 + 0.5*sin(2*pi/T*t-pi/2));
    theta = omega_max * (1/2*t - T/(4*pi)*cos(2*pi/T*t-pi/2));
end
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

subplot(6,1,1);
plot(t, omega, '.', 'MarkerSize', 6); grid on;
title('äpë¨ìx', 'FontSize', 11);
xlabel('t', 'FontSize', 11);
ylabel('\omega', 'FontSize', 11);
subplot(6,1,2);
plot(t, theta, '.', 'MarkerSize', 6); grid on;
title('épê®äp', 'FontSize', 11);
xlabel('t', 'FontSize', 11);
ylabel('\theta', 'FontSize', 11);
subplot(6,1,[3,6]);
hold off;
plot(pos(:,1),pos(:,2), '.', 'MarkerSize', 6);
title('à íu', 'FontSize', 11);
grid on;
xlabel('x', 'FontSize', 11);
ylabel('y', 'FontSize', 11);

pos(end, :)

%(90-pos(end, 2))-(180-pos(end, 1))   % 45
%pos(end, 1)-90*sqrt(2)             % 45 45
%pos(end, 1)-(180-pos(end, 2))      % 135
%pos(end, 1)-180*sqrt(2)             % 45_S_45

format long
data = pos(1:200:size(pos, 1), :);
dlmwrite('data.csv',data,'precision','%.8f');
