print("packages.lua")


local cpm_str = ""
for _, dep in pairs(project.dependencies) do
  cpm_str = cpm_str .. "CPMAddPackage(\n" 
  .. dep.name .. "\n"
  .. "GITHUB_REPOSITORY " .. dep.git_short .. "\n"
  .. "GIT_TAG " .. dep.selected_version .. "\n"
  .. ")"
end
return cpm_str

