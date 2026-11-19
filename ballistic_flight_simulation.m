clear; clc;

setParameters;

[t, solution] = eulerIntegration(initial_state, t_span, F_p, t_p, g_vec, m, alpha, c);

% size(solution);
% display(t_span);
% display(solution);

plotData(t, solution, m, g);

