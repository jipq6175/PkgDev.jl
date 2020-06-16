
using PyCall

ndimage = pyimport("scipy.ndimage");
function gaussian(mat::AbstractMatrix)
    return ndimage.gaussian_filter(mat, sigma=1.0);
end
