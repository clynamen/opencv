## OpenCV: Open Source Computer Vision Library

This is a fork of the original [OpenCV](https://github.com/opencv/opencv) library.
I am currently working on adding a [Julia](https://github.com/JuliaLang/julia) binding using the same generator used for python.

Status: currently prototyping and exploring use of [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/).

### Why a new binding?

There are already some bindings:

 - [JuliaOpenCV/OpenCV.jl](https://github.com/JuliaOpenCV/OpenCV.jl)
 - [maxruby/OpenCV.jl](https://github.com/maxruby/OpenCV.jl)

They are built using [Cxx.jl](https://github.com/JuliaInterop/Cxx.jl), which allows to call C++ function from Julia.
Here I am trying the opposite approach: providing Julia functions by generating C++ code. This is the approach used by the [official OpenCV binding](https://docs.opencv.org/4.1.0/da/d49/tutorial_py_bindings_basics.html).

By using a generator along with some custom code it should be possible to provide a fast binding with a proper Julia interface.


### Resources

* Homepage: <https://opencv.org>
* Docs: <https://docs.opencv.org/master/>
* Q&A forum: <http://answers.opencv.org>
* Issue tracking: <https://github.com/opencv/opencv/issues>

### Contributing

Please read the [contribution guidelines](https://github.com/opencv/opencv/wiki/How_to_contribute) before starting work on a pull request.

#### Summary of the guidelines:

* One pull request per issue;
* Choose the right base branch;
* Include tests and documentation;
* Clean up "oops" commits before submitting;
* Follow the [coding style guide](https://github.com/opencv/opencv/wiki/Coding_Style_Guide).
