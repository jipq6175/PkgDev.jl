#include("G:\\My Drive\\18. Github Repo\\PkgDev.jl\\src\\PkgDev.jl");
#using .PkgDev
using PkgDev
using Test

z = zeros(10, 10);


@testset "PkgDev.jl" begin
    @test gaussian(z) == z;
    @test gaussian(z) == z;
    @test gaussian(z) == z;
    @test gaussian(z) == z;


end
