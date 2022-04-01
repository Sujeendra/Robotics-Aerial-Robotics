function [ u1, u2 ] = controller(~, state, des_state, params)
%CONTROLLER  Controller for the planar quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [y; z], state.vel = [y_dot; z_dot], state.rot = [phi],
%   state.omega = [phi_dot]
%
%   des_state: The desired states are:
%   des_state.pos = [y; z], des_state.vel = [y_dot; z_dot], des_state.acc =
%   [y_ddot; z_ddot]
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls


% FILL IN YOUR CODE HERE
mass = params.mass;
gravity=params.gravity;
Ixx=params.Ixx;

kpz=85;
kvz=23;
kpy=40;
kvy=5;
kphi_p=3000;
kphi_v=50;

error_z=des_state.pos(2)-state.pos(2);
differror_z=des_state.vel(2)-state.vel(2);

error_y=des_state.pos(1)-state.pos(1);
differror_y=des_state.vel(1)-state.vel(1);

u1=mass*(gravity+des_state.acc(2)+(kpz*error_z)+(kvz*differror_z));
phic_desired=(-1/gravity)*(des_state.acc(1)+(kpy*error_y)+(kvy*differror_y));

u2=Ixx*((kphi_p*(phic_desired-state.rot(1)))+(kphi_v*(-state.omega(1))));


end

