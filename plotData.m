function plotData(t, state, m, g)
%%% Plots data into three figures - y(x) ; x,y,v(t); E(t) %%%
x = state(1, :);
y = state(2, :);
vx = state(3, :);
vy = state(4, :);
v = sqrt(vx.^2 + vy.^2);
% v = norm(vx, vy);
E = 0.5 * m * v.^2 + m * g * y;

plot(x, y)
xlabel('x')
ylabel('y')
grid on

figure
plot(t, x)
hold on
plot(t, y)
plot(t, v)
hold off
xlabel('t [s]')
ylabel('Value')
legend('Down-range', 'Altitude', 'Velocity')
grid on

figure
plot(t, E)
xlabel('t [s]')
ylabel('Mechanical Energy [J]')
grid on
end

