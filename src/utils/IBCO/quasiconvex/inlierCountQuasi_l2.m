% number of inliers (number of inlier correspondences, used for l2 norm) for homography problem
function [nInls] = inlierCountQuasi_l2(A, b, c, d, x ,th, normalizeH)

    if (nargin < 7); normalizeH = 1; end;        
    if (nargin<6);   th = 1;   end;    
    
    if (normalizeH == 1) && (length(x)==9); x = x./x(end); end; % For homography: If normalize, normalize homography matrix to set H33 = 1;
    
    if (size(A,2)<length(x))
        x=x(1:size(A,2));
    end
    
    nbrimages = size(b,2); 
    d1 = size(A,1)/nbrimages;
    AxPb = reshape(A*x,d1,nbrimages) + b; % Ax + b
    Sqrt_AxPb = sqrt(sum(AxPb.^2));                     % sqrt(Ax + b)
    if(numel(d) == 0)
        CxPd = 1;
    else
        CxPd = (x'*c + d);
    end
    
    resn = zeros(nbrimages, 1);
    id = abs(CxPd)>0.01;    
    resn(id) = Sqrt_AxPb(id)./abs(CxPd(id));
    resn(~id) = 100000000*max(resn);
    nInls = numel(find(abs(resn) <= th)); 
end