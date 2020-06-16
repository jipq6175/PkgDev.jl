
using PyCall, Conda

try
    ndimage = pyimport("scipy.ndimage");
catch err
    Conda.add("scipy");
end
ndimage = pyimport("scipy.ndimage");
function gaussian(mat::AbstractMatrix)
    return ndimage.gaussian_filter(mat, sigma=1.0);
end
