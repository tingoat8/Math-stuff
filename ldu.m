%Given matrix A.
A = [0 0 1; 0 1 0; 1 0 0];

[L,U,P] = lu(A); % calculate partial-pivoted LU decomposition of A

D = diag(diag(U)); % get diagonal matrix

U = D\U; % the 'U' that is needed is really inv(D)*U