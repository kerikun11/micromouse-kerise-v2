clear;
%%{
% curve90 (fast)
v_const = 924;
angle = pi/2;
%}
%{
% curve45 (fast)
v_const = 1000*90/(73.5498-30.4639);
pos_start = [0; 0; 0];
pos_end = [180; 90; pi/4];
%}
%{
% curveV90 (fast)
v_const = 1300;
pos_start = [0; 0; 0];
pos_end = [90*sqrt(2); 90*sqrt(2); pi/2];
%}
%{
% curve135 (fast)
v_const = 872*180/(52.5251+126.8067);
pos_start = [0; 0; 0];
pos_end = [0; 180; pi*3/4];
%}
%{
% curve180 (fast)
v_const = 1300*180/168.4119;
pos_start = [0; 0; 0];
pos_end = [0; 180; pi];
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
title('�p���x', 'FontSize', 11);
xlabel('t', 'FontSize', 11);
ylabel('\omega', 'FontSize', 11);
subplot(4,1,2);
plot(t, theta, '.', 'MarkerSize', 6); grid on;
title('�p���p', 'FontSize', 11);
xlabel('t', 'FontSize', 11);
ylabel('\theta', 'FontSize', 11);

subplot(4,1,[3,4]);
hold off;
plot(pos(:,1),pos(:,2), '.', 'MarkerSize', 6);
title('�ʒu', 'FontSize', 11);
grid on;
xlabel('x', 'FontSize', 11);
ylabel('y', 'FontSize', 11);

pos(end, :)

data = pos(1:100:size(pos, 1), :);
format short;
csvwrite('data.csv',data);

