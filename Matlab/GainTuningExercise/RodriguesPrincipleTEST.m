%v=RodriguesPrinciple([1/sqrt(2),0,-1/sqrt(2)],2);
v=RodriguesPrinciple([-1/sqrt(3),1/sqrt(3),-1/sqrt(3)],pi);
v
function m=RodriguesPrinciple(u,phi)
I=[1,0,0;0,1,0;0,0,1];
uutranspose=u.*u';
uhat=[0,-u(3),u(2);u(3),0,-u(1);-u(2),u(1),0];
m=(I*cos(phi))+(uutranspose*(1-cos(phi)))+(uhat*sin(phi));
end

