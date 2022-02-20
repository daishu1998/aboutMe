PI = rand(5);
PI_std = PI / diag(sum(PI));

wL = ones(5, 1);
gap = 10;

while gap > 1e-8
    wL = PI_std * wL;
    wL(1) = 1;
    gap = norm(wL - PI_std * wL);
end
