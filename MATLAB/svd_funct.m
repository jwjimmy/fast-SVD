function [U, E, V] = svd_funct(A)
% expect 2x2 matrix as input
% outputs 3 2x2 matrixes, following the A = UED singular decomposition

a = A(1,1);
b = A(1,2);
c = A(2,1);
d = A(2,2);

A2 = [a,b;c,d]

sum = atan((c+b)/(d-a)); %sum = angle([p+t*i]) %theta sum (tr + tl)
diff = atan((c-b)/(d+a)); %diff = angle([q+s*i]) %theta diff (tr - tl)

l = (sum - diff)/2; %radians to rotate left
r = (sum + diff)/2; %radians to rotate right

L = [cos(l), sin(l); -sin(l), cos(l)]; % left rotation matrix
R = [cos(r), sin(r); -sin(r), cos(r)]; % right rotation matrix

U = L;
E = L.'*A*R;
V = R.';
% A = U*E*V

