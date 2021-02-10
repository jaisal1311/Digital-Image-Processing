disp('TYCS - 582_Jaisal_Shah')
x = [1, 2; 3, 4;]
h = [5, 6; 7, 8]
lenX = length(x)
lenH = length(h)
n = max(lenX, lenH)
a = x'
v1 = reshape(a, 1, [])
b = h'
v2 = reshape(b, 1, [])
