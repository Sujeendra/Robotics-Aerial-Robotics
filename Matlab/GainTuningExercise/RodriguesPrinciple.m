function m=RodriguesPrinciple(u,phi)
I=[1,0,0;0,1,0;0,0,1];
uutranspose=u*u';
uhat=[0,-u(2),u(1);u(2),0,-u(0);-u(1),-u(0),0]
m=(I*cos(phi))+(uutranspose*(1-cos(phi)))+(uhat*sin(phi))
end

v=RodriguesPrinciple([-1/sqrt(2),0,1/sqrt(2)],2)