package = "file-log-extended"
 version = "1.0-1"
 source = {
    url = "..." -- We don't have one yet
 }
 description = {
    summary = "An example for the LuaRocks tutorial.",
    detailed = [[
       This is an example for the LuaRocks tutorial.
       Here we would put a detailed, typically
       paragraph-long description.
    ]],
    homepage = "http://...", -- We don't have one yet
    license = "MIT/X11" -- or whatever you like
 }
 dependencies = {
    "lua ~> 5.1"
    -- If you depend on other rocks, add them here
 }
 build = {
    type = "builtin",
    modules = {
      ["kong.plugins.file-log-extended.handler"] = "/Users/nazar/Hub/CareAxiom/development/kong-plugins/kong/plugins/file-log-extended/handler.lua",
      ["kong.plugins.file-log-extended.log"] = "/Users/nazar/Hub/CareAxiom/development/kong-plugins/kong/plugins/file-log-extended/log.lua",
      ["kong.plugins.file-log-extended.schema"] = "/Users/nazar/Hub/CareAxiom/development/kong-plugins/kong/plugins/file-log-extended/schema.lua"
  }
 }