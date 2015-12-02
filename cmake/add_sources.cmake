set(SRC_ROOT ${CMAKE_CURRENT_SOURCE_DIR})

macro (add_sources)
    file(RELATIVE_PATH _relPath "${SRC_ROOT}" "${CMAKE_CURRENT_SOURCE_DIR}")
    foreach(_src ${ARGN})
    
        if(_relPath)
            list(APPEND SRC "${_relPath}/${_src}")
        else()
            list(APPEND SRC "${_src}")
        endif()
    endforeach()
    if(_relPath)
        set(SRC ${SRC} PARENT_SCOPE)
    endif()
endmacro()
