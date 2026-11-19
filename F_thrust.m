function thrust_vec = F_thrust(t, F_p, t_p, alpha)
%%% Returns F_p vector for the duration of engine burn %%%
if t > 0 && t <= t_p
    thrust_vec = F_p * [cos(alpha); sin(alpha)];
else
    thrust_vec = zeros(2, 1);
end
end

