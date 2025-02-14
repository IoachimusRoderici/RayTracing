# API Reference

## Ray Interface

```@autodocs
Modules = [RayTracing]
Pages = RayTracing.ray_files
Order = [:function]
```

## Ray Types

```@autodocs
Modules = [RayTracing]
Pages = RayTracing.ray_files
Order = [:type]
Private = false
```

```@docs
RayTracing.AbstractRayWithData
```

## Ray Sources

```@autodocs
Modules = [RayTracing]
Pages = RayTracing.ray_sources_files
Private = false
```

## Reflection Modes

```@docs
RayTracing.ReflectionMode
```

```@autodocs
Modules = [RayTracing]
Pages = RayTracing.reflection_mode_files
Private = false
Order = [:type, :function]
```

## Scene Types

```@autodocs
Modules = [RayTracing]
Pages = RayTracing.scene_files
Order = [:type]
```

## Scene Interface

```@docs
RayTracing.next_intersection
RayTracing.get_surface_data
```

## Tracing Interface

```@autodocs
Modules = [RayTracing]
Pages = ("trace!.jl",)
Private = false
```
