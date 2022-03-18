function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

%%need to set this based on trial and error
Kp=600;
Kd=70;

% error as feedback
error=s_des(1)-s(1);
diff_error=s_des(2)-s(2);

%mass and gravity
mass=params.mass;
gravity=params.gravity;

% motor thrust required 
u = mass*((error*Kp)+(diff_error*Kd)+gravity);


% FILL IN YOUR CODE HERE


end

