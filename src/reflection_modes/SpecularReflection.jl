export SpecularReflection

"""
    SpecularReflection <: ReflectionMode

This [`ReflectionMode`](@ref) inverts rays with respect to a surface,
mutating only the ray's direction.
"""
struct SpecularReflection <: ReflectionMode end

function reflect!(ray, ::SpecularReflection, normal, _)
    dir = direction(ray)
    dir .-= 2 * (dir ⋅ normal) * normal
    normalize!(dir)
end