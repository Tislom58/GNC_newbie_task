function [t, solution] = eulerIntegration(initial_state, t_span, F_p, t_p, g_vec, m, alpha, c)
    states = zeros(4, numel(t_span));
    states(:, 1) = initial_state;
    dt = t_span(2) - t_span(1);
    for index = 2:numel(t_span) % skip the first zero state which is already assigned
        prev_state =  states(:, index - 1);
        new_state = prev_state + stepSolution(t_span(index), prev_state, F_p, t_p, g_vec, m, alpha, c) * dt;
        y = new_state(2);
        v_y = new_state(4);
        if y <= 0 && v_y < 0
            last_index = index - 1;
            break
        end
        states(:, index) = new_state;
    end
    t = t_span(1:last_index);
    solution = states(:, 1:last_index);
end

