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




## Additional Notes
