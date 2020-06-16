# test.jl test file



using PkgTemplates;
t = Template(; user="jipq6175",
               authors=["Yen"; "Cornell University"],
               plugins=[License(; name="MIT"); TravisCI(); Codecov(); Coveralls(); AppVeyor()]);

t("PkgDev.jl")
