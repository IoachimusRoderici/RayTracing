# [Scenes](@id scenes_page)

A scene is a set of surfaces that rays can interact with by advancing until they hit a surface, and
then[`reflect!`](@ref)ing on it. Some generic scene types are defined in this package, but each
application may need to define its own custom scene type.

Scenes in this package are represented by subtypes of [`AbstractScene`](@ref RayTracing.AbstractScene).
The interface for scenes has only two functions:

[`next_intersection`](@ref RayTracing.next_intersection) determines what the next intersection will be
between a ray and any surface from a scene. It returns the distance to the intersection and some value
identifying the corresponding point and/or surface.

[`get_surface_data`](@ref RayTracing.get_surface_data) takes the id returned by `next_intersection` and
returns information about the surface, such as a normal vector, a color, etc. The type of data returned
depends on the type of scene.

## Scene Geometries

Scene implementations have two responsabilities:
- Describing the geometry of the surfaces contained in the scene.
- Describing surface properties such as color, opacity, porosity, etc.

These two tasks can be independent, and in fact it is desirable to be able to reuse the representation of
geometry from one scene in another scene with a different set of surface properties. For this porpose, a
[`SceneGeometry`](@ref RayTracing.SceneGeometry) can be used to describe the geometry of a scene without
any information about surface properties. Then different scenes can be created by adding different surface
properties to the same `SceneGeometry`.

The interface for `SceneGeometry`s is the same as the interface for `AbstractScene`s, the only difference
being that `get_surface_data` returns only data about the geometry of the surface at the intersection point.