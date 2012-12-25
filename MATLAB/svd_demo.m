A = [1,2;3,4]

a = A(1,1)
b = A(1,2)
c = A(2,1)
d = A(2,2)

p = c + b
q = c - b
s = d + a
t = d - a

sum = angle([p+t*i]) %theta sum
diff = angle([q+s*i]) %theta diff

l = (sum - diff)/2
r = (sum + diff)/2

L = [cos(l), sin(l); -sin(l), cos(l)]
R = [cos(r), sin(r); -sin(r), cos(r)]
%cos sin -sin cos
taoeu = sin(l)
aoeudhctns = sin(pi/2)

[U,E,V] = svd(A)

ED = L*A*R.'