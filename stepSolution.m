function stepState = stepSolution(t, state, F_p, t_p, g_vec, m, alpha, c)
    v_vec = state(3:4);
    v_abs = norm(v_vec);
    
    thrust_vec = F_thrust(t, F_p, t_p, alpha);
    drag_vec = c * v_abs * v_vec;
    
    a_vec = (thrust_vec - drag_vec) / m - g_vec;
    
    stepState = [v_vec; a_vec];
end

