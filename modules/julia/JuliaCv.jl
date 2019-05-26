using CxxWrap

module JuliaCv
  using CxxWrap
  @wrapmodule(joinpath("/home/clynamen/software/sources/opencv/build/lib/julia/","cv2.so"))

  function __init__()
    @initcxx
  end
end

using .JuliaCv

# Call greet and show the result
#@show CppHello.greet()
print(JuliaCv.OGL_TEXTURE2D_RGBA)