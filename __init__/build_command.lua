project.build_command = frate.format([[
cmake -DCMAKE_BUILD_TYPE={%current_mode%}  
make -j ${npoc}
./{%build_dir%}/{%project_name%}
]], {
    current_mode = project.current_mode,
    build_dir = project.build_dir,
    project_name = project.name
})
