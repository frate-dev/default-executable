local toolchains_str = ""

print("project.name " .. project.project_name)

for _, toolchain in pairs(project.toolchains) do
  toolchains_str = toolchains_str .. "include(toolchains/" .. toolchain .. ".cmake)\n"
end



return toolchains_str

