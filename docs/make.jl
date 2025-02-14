using Documenter
using RayTracing, Makie

# Assume "using RayTracing" in all doctests:
DocMeta.setdocmeta!(RayTracing, :DocTestSetup, :(using RayTracing); recursive=true)

MakieExtension = Base.get_extension(RayTracing, :MakieExtension)

makedocs(
    sitename = "RayTracing.jl",
    modules = [RayTracing, MakieExtension],
    checkdocs = :exports,
    warnonly = true,
    pages = [
        "Home" => "index.md",
        "rays.md",
        "scenes.md",
        "the_ray_tracing_algorithm.md",
        "plots.md",
        "api_reference.md"
    ]
)

deploydocs(
    repo = "github.com/IoachimusRoderici/RayTracing.jl.git",
)
