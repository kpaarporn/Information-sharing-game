function gradf = gradient_f(s,Q,eA,eB,L0,L1,A0,A1)

% Gradient of player i's fitness w.r.t strategy si
% Q: quadratic constant matrix in formula for f_{pq} (see SI App. A), and
% generated by get_Q.m
% L0,L1: linear constant vectors in formula for f_{pq} (only L0 is active
% in the context of this paper. Generally this will not hold.) These are
% generated by get_L.m
% gradf: a vector of length 4
A0_00 = A0(1,1); A1_00 = A1(1,1);
A0_10 = A0(2,1); A1_10 = A1(2,1);

gradf = Q*s + eA*L0*(A0_10-A0_00) + eB*L1*(A1_10-A1_00);
