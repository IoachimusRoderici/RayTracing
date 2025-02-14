module RayTracing

import StaticArrays: MVector
import LinearAlgebra: norm, normalize, normalize!, ⋅, ×
import GeometryBasics: Point, Vec, Vec3

# Include source code files.
# (would be nice to do this with glob patterns instead of
# listing all files, but they need to be included in order)

const ray_files = (
    "rays/AbstractRay.jl",
    "rays/BasicRay.jl",
    "rays/RayWithData.jl",
    "rays/StateRecorder.jl"
)

const ray_sources_files = (
    "ray_sources/BackwardCameraRays.jl",
)

const reflection_mode_files = (
    "reflection_modes/ReflectionMode.jl",
    "reflection_modes/CombinedReflectionModes.jl",
    "reflection_modes/SpecularReflection.jl",
    "reflection_modes/SetMaterialData.jl",
    "reflection_modes/MaterialDataOperation.jl"
)

const scene_files = (
    "scenes/AbstractScene.jl",
    "scenes/BallPit.jl",
    "scenes/GeometryWithData.jl"
)

const all_source_files = (
    ray_files...,
    ray_sources_files...,
    reflection_mode_files...,
    scene_files...,
    "trace!.jl"
)

foreach(include, all_source_files)

end