import GLAbstraction
import GeometryTypes
"""
**Arguments**
* `x::float`: A value from -10 (left side) to 10 (right side)
* `y::float`: A value from -10 (bottom) to 10 (top)
**Keyword Arguments**
* `resolution::tuple`: Resolution of the screen
**Returns**
x, y: converted coordinates (into pixel space)
**Examples**
```julia
xnew, ynew = convert(-3, 2)
```
"""
function convert(x, y; resolution=(1280,1024), return_matrix=false)
  x = (resolution[1]/2) + x*(resolution[1]/2/10)
  y = (resolution[2]/2) - y*(resolution[2]/2/10)
  if return_matrix == false
      return x, y
  else
      return GLAbstraction.translationmatrix(GeometryTypes.Vec3f0(x,y,0))
  end

end
