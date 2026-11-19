% Physical parameters

g = 9.8066; % [m/s]
m = 50; % [kg]
t_p = 5; % [s]
F_p = 7000; % [N]
rho = 1.225; % [kg / m ^ 3]
c_D = 0.237;
d = 0.2; % [m]
alpha = pi/4; % initial angle [radians]

% Simulation parameters

t_end = 120; % [s]
step_frequency = 1000; % [Hz]
initial_state = [0; 0; 0; 0]; % [x, y, vx, vy]

% Pre-calculations
r = d / 2;
A = pi * r^2;
c = 0.5 * rho * c_D * A;
g_vec = [0; g];
t_step = 1 / step_frequency; 
t_span = 0:t_step:t_end;

