# RayTracing.jl

This package aims to provide general porpuse tools to create [ray tracing](https://en.wikipedia.org/wiki/Ray_tracing) simulations.

There are three main components to this package:

- [Rays](@ref rays_page): Objects that move in straight lines starting from a given position and direction.
  These can be used to represent light, color, sound, particles, etc.
- [Scenes](@ref scenes_page): Sets of surfaces that rays bounce on or otherwise interact with.
- [The Ray Tracing Algorithm](@ref): The algorithm used for tracing a ray on a scene.

There is also an extension to make [plots with Makie](@ref plots_page).
