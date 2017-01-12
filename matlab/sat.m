clear;

angle = pi/2;
%v_max = 1000;
omega_max = 6 * pi;
omega_dot = 128 * pi;

syms t v_max;

T = omega_max/omega_dot*pi;
omega(t) = omega_max * sin(pi*t/T)^2;
theta(t) = int(omega, t);
v(t) = v_max + 0*t;

T1 = T/2;
T2 = (angle-theta(T))/omega_max;

if(T2) > 0
    omega1(t) = omega(t);
    omega2(t) = omega_max + 0*t;
    omega3(t) = omega(t-T2);

    subplot(6,1,1);
    hold on; grid on;
    plot(0:0.0001:T1, omega1(0:0.0001:T1));
    plot(T1:0.0001:T1+T2, omega2(T1:0.0001:T1+T2));
    plot(T1+T2:0.0001:T1*2+T2, omega3(T1+T2:0.0001:T1*2+T2));
    
    theta1(t) = theta(t);
    theta2(t) = theta(T1) + omega_max*(t-T1);
    theta3(t) = omega_max*T2 + theta(t-T2);

    subplot(6,1,2);
    hold on; grid on;
    plot(0:0.0001:T1, theta1(0:0.0001:T1));
    plot(T1:0.0001:T1+T2, theta2(T1:0.0001:T1+T2));
    plot(T1+T2:0.0001:T1*2+T2, theta3(T1+T2:0.0001:T1*2+T2));
    
    x(v_max) = int(v*cos(theta1), t, 0, T1)+int(v*cos(theta2), t, T1, T1+T2)+int(v_max*cos(theta3), t, T1+T2, T1*2+T2);
    y(v_max) = int(v*sin(theta1), t, 0, T1)+int(v*sin(theta2), t, T1, T1+T2)+int(v_max*sin(theta3), t, T1+T2, T1*2+T2);
else
    omega(t) = omega_max * sin(pi*t)^2;
    theta(t) = int(omega, t);
    T = angle/theta(1);
    omega(t) = omega(t/T); theta(t) = theta(t/T);
    theta(t) = int(omega, t);
    
    subplot(6,1,1);
    hold on; grid on;
    plot(0:0.0001:T, omega(0:0.0001:T));
    subplot(6,1,2);
    hold on; grid on;
    plot(0:0.0001:T, theta(0:0.0001:T));

    x(t) = int(v_max*cos(theta), t);
    y(t) = int(v_max*sin(theta), t);
    x_end(v_max) = int(v_max*cos(theta), t, 0, T);
    y_end(v_max) = int(v_max*sin(theta), t, 0, T);
end

v_max = solve(x_end==90, v_max)
