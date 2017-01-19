clear
segment = 90;
%{
% 30
pos_end = [segment/2*(sqrt(3)+1)/2, segment/2*(sqrt(3)-1)/2, pi/6];
%}
%{
% 60
pos_end = [segment*2/3, segment/2, pi/3];
%}
%{
% 90
pos_end = [segment/2, segment/2, pi/2];
%}
%{
% 120
pos_end = [segment/2, segment/2*sqrt(3), pi*2/3];
%}
%%{
% 150
pos_end = [0, segment, pi/6*5];
%}
%{
% 180
pos_end = [0, segment, pi];
%}

omega_dot = 144 * pi;
omega_max = 6 * pi;
angle = pos_end(3);

syms t v;

T = omega_max / omega_dot * pi;
omega(t) = omega_max * sin(pi*t/T)^2;
theta(t) = int(omega, t);

T1 = T/2;
T2 = (pos_end(3)-theta(T))/omega_max;

if(T2) > 0 % sine => line => sine
    omega1(t) = omega(t);
    omega2(t) = omega_max + 0*t;
    omega3(t) = omega(t-T2);
    
    theta1(t) = theta(t);
    theta2(t) = theta(T1) + omega_max*(t-T1);
    theta3(t) = omega_max*T2 + theta(t-T2);
    
    x_end(v) = int(v*cos(theta1), t, 0, T1)+int(v*cos(theta2), t, T1, T1+T2)+int(v*cos(theta3), t, T1+T2, T1*2+T2);
    y_end(v) = int(v*sin(theta1), t, 0, T1)+int(v*sin(theta2), t, T1, T1+T2)+int(v*sin(theta3), t, T1+T2, T1*2+T2);
else % sine only
    temp = double(sqrt(angle/theta(T)));
    T = omega_max / omega_dot * pi * temp;
    omega(t) = temp * omega_max * sin(pi*t/T)^2;
    theta(t) = int(omega, t);
    
    x_end(v) = int(v*cos(theta), t, 0, T);
    y_end(v) = int(v*sin(theta), t, 0, T);
end

v = solve((pos_end(2)-y_end)*cos(angle)==(pos_end(1)-x_end)*sin(angle), v);

format long;
dt = double(2/v);
v = double(v);

if(T2) > 0
    x1(t) = int(v*cos(theta1), t, 0, t);
    y1(t) = int(v*sin(theta1), t, 0, t);
    x2(t) = x1(T1)+int(v*cos(theta2), t, T1, t);
    y2(t) = y1(T1)+int(v*sin(theta2), t, T1, t);
    x3(t) = x2(T1+T2)+int(v*cos(theta3), t, T1+T2, t);
    y3(t) = y2(T1+T2)+int(v*sin(theta3), t, T1+T2, t);
    
    T2 = double(T2);
    t1 = 0:dt:T1;
    t2 = t1(end)+dt:dt:T1+T2;
    t3 = t2(end)+dt:dt:T1*2+T2;
    
    pos = double([x1(t1)', y1(t1)', theta1(t1)';
        x2(t2)', y2(t2)', theta2(t2)';
        x3(t3)', y3(t3)', theta3(t3)']);
    pos = [pos; double([x3(T1*2+T2)', y3(T1*2+T2)', theta3(T1*2+T2)'])];

    subplot(6,1,1); hold off;
    plot(t1, omega1(t1), '.', 'MarkerSize', 12);
    hold on; grid on;
    plot(t2, omega2(t2), '.', 'MarkerSize', 12);
    plot(t3, omega3(t3), '.', 'MarkerSize', 12);
    xlim([0, T1*2+T2]);
    
    subplot(6,1,2); hold off;
    plot(t1, theta1(t1), '.', 'MarkerSize', 12);
    hold on; grid on;
    plot(t2, theta2(t2), '.', 'MarkerSize', 12);
    plot(t3, theta3(t3), '.', 'MarkerSize', 12);
    xlim([0, T1*2+T2]);
    
    subplot(6,1,[3 6]); hold off;
    plot(x1(t1), y1(t1), '.', 'MarkerSize', 12);
    hold on; grid on;
    plot(x2(t2), y2(t2), '.', 'MarkerSize', 12);
    plot(x3(t3), y3(t3), '.', 'MarkerSize', 12);
else
    t1 = 0:dt:T;
    x(t) = int(v*cos(theta), t, 0, t);
    y(t) = int(v*sin(theta), t, 0, t);
    pos = double([x(t1)', y(t1)', theta(t1)']);
    pos = [pos; double([x(T)', y(T)', theta(T)'])];
    
    subplot(6,1,1); hold off;
    plot(t1, omega(t1), '.', 'MarkerSize', 12);
    grid on; xlim([0, T]);
    subplot(6,1,2); hold off;
    plot(t1, theta(t1), '.', 'MarkerSize', 12);
    grid on; xlim([0, T]);
    subplot(6,1,[3 6]); hold off;
    plot(x(t1), y(t1), '.', 'MarkerSize', 12);
    grid on;
end

dlmwrite('data.csv', pos, 'precision', '%.10f');
v
double((pos_end(2)-pos(end, 2))/sin(angle))

subplot(6,1,1);
title(sprintf('$$ \\dot{\\omega}_{max}: %.0f\\pi,\\ \\omega_{max}: %.0f\\pi $$', omega_dot/pi, omega_max/pi), 'Interpreter','latex', 'FontSize', 14);

subplot(6,1,2);
title(sprintf('$$ \\theta_{end}: %.2f\\pi $$', angle/pi), 'Interpreter','latex', 'FontSize', 14);

subplot(6,1,[3 6]);
title(sprintf('$$ v_{max}: %.3f $$', v), 'Interpreter','latex', 'FontSize', 14);
