# The Ray Tracing Algorithm

## Step

The ray tracing algorithm, as implemented in this package, is based on the [`step!`](@ref)
function. This function takes a ray and a scene, and uses the ray and scene interfaces to:
- Find the next intersection,
- Advance the ray to that intersection,
- Query the scene for reflection mode and surface properties,
- Reflect the ray.

A default implementation is provided which should work for most use cases, but it can be overloaded
for custom (scene) types if necessary.

The return value of `step!` is a `Symbol` describing the result of the operation. `:ok` means that
the step was performed, `:no_intersection` means that the step could not be performed because there
are no intersections, and custom overloads may return any other symbol.

## Trace

The [`trace!`](@ref) function traces a ray on a scene. Tracing a ray means `step!`ing repeatedly
until some stop condition is satisfied. Stop conditions are passed as keyword arguments.

The return value is a symbol describing which stop condition caused the function to return.