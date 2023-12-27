project.build_command = frate.format([[
cmake -DCMAKE_BUILD_TYPE={%current_mode%}  
make -j ${nproc} ./{%build_dir%}/{%name%}
]], {
    current_mode = project.current_mode,
    build_dir = project.build_dir,
    name = project.name
})
