
using PyCall, Conda

try
    ndimage = pyimport("scipy.ndimage");
catch err
    Conda.add("scipy");
    ndimage = pyimport("scipy.ndimage");
end

function gaussian(mat::AbstractMatrix)
    return ndimage.gaussian_filter(mat, sigma=1.0);
end
