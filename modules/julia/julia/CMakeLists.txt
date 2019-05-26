if(NOT PYTHON3_INCLUDE_PATH OR NOT PYTHON3_NUMPY_INCLUDE_DIRS)
  ocv_module_disable(julia)
endif()

set(the_description "The julia bindings")
set(MODULE_NAME julia)
set(MODULE_INSTALL_SUBDIR julia)

include(../common.cmake)

unset(MODULE_NAME)
unset(MODULE_INSTALL_SUBDIR)
