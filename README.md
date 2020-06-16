# PkgDev.jl
 Julia Package Development Workflow

## Step by Step Notes

Following Chris' awesome [video tutorial](https://youtu.be/QVmU29rCjaA)


### Create Package Template and Initialize Github Repo

1. Using `PkgTemplates.jl` to create template for the new Julia package.

```
julia> using PkgTemplates
julia> t = Template(; user="jipq6175",
               authors=["Yen"; "Cornell University"],
               plugins=[License(; name="MIT"); TravisCI(); Codecov(); Coveralls(); AppVeyor()]);
julia> generate("PkgDev.jl", t);
```

2. Publish/Initialize to Github
3. Edit the `.jl` files in `.\\src\\`. For example, I used a `filea.jl` as following

```
using PyCall

ndimage = pyimport("scipy.ndimage");
function gaussian(mat::AbstractMatrix)
    return ndimage.gaussian_filter(mat, sigma=1.0);
end
```

4. And in the main `.\\src\\PkgDev.jl`, add

```
export gaussian;
include("filea.jl");
```

### Run Tests

1. In `.\\test\\runtest.jl`, run

```
include("G:\\My Drive\\18. Github Repo\\PkgDev.jl\\src\\PkgDev.jl");
using .PkgDev
using Test

z = zeros(10, 10);
@testset "PkgDev.jl" begin
    @test gaussian(z) == z;
    @test gaussian(z) == z;
    @test gaussian(z) == z;
    @test gaussian(z) == z;
end
```

And Julia will tell you..

```
Test Summary: | Pass  Total
PkgDev.jl     |    4      4
```






## Additional Notes
