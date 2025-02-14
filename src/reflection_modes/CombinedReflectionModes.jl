export CombinedReflectionModes

"""
    CombinedReflectionModes{Modes <: Tuple{Vararg{ReflectionMode}}} <: ReflectionMode

A [`ReflectionMode`](@ref) that combines the effects of different reflection
modes.

Calling [`reflect!`](@ref) with this mode results in one call to `reflect!` with
each contained mode.

## Example

```jldoctest
julia> struct Mode1 <: RayTracing.ReflectionMode end

julia> struct Mode2 <: RayTracing.ReflectionMode end

julia> RayTracing.reflect!(ray, mode::Mode1, geometric_data, material_data) = println(material_data)

julia> RayTracing.reflect!(ray, mode::Mode2, geometric_data, material_data) = println(geometric_data)

julia> combined_mode = CombinedReflectionModes(Mode1(), Mode2())
CombinedReflectionModes{Tuple{Mode1, Mode2}}((Mode1(), Mode2()))

julia> reflect!(:some_ray, combined_mode, "some geometric data", "some material data")
some material data
some geometric data
```
"""
struct CombinedReflectionModes{Modes <: Tuple{Vararg{ReflectionMode}}} <: ReflectionMode
    modes :: Modes
end

CombinedReflectionModes(modes...) = CombinedReflectionModes(modes)

function reflect!(ray, mode::CombinedReflectionModes, geometric_data, material_data)
    for m in mode.modes
        reflect!(ray, m, geometric_data, material_data)
    end
end