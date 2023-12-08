local cache_str = ""

cache_str = cache_str .. "CPMAddPackage(\n"
cache_str = cache_str .. "  NAME Ccache.cmake\n"
cache_str = cache_str .. "  GITHUB_REPOSITORY TheLartians/Ccache.cmake\n"
cache_str = cache_str .. "  VERSION 1.2\n"
cache_str = cache_str .. ")\n"
cache_str = cache_str .. "find_program(CCACHE_FOUND ccache)\n"
cache_str = cache_str .. "if(CCACHE_FOUND)\n"
cache_str = cache_str .. "  set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache)\n"
cache_str = cache_str .. "  set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache)\n"
cache_str = cache_str .. " set(CMAKE_C_COMPILER_LAUNCHER ccache)\n"
cache_str = cache_str .. " set(CMAKE_CXX_COMPILER_LAUNCHER ccache)\n"
cache_str = cache_str .. "else()\n"
cache_str = cache_str .. "  message(WARNING \"ccache not found\")\n"
cache_str = cache_str .. "endif()\n"

return cache_str
