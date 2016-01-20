local log = require "kong.plugins.file-log-extended.log"
local BasePlugin = require "kong.plugins.mashape-analytics.handler"

local FileLogExtendedHandler = BasePlugin:extend()

function FileLogExtendedHandler:new()
  FileLogExtendedHandler.super.new(self, "file-log-extended")
end

function FileLogExtendedHandler:access(conf)
  FileLogExtendedHandler.super.access(self, conf)
end

function FileLogExtendedHandler:body_filter(conf)
  FileLogExtendedHandler.super.body_filter(self, conf)
end

function FileLogExtendedHandler:log(conf)
  -- FileLogExtendedHandler.super.log(self)
  log.execute(conf)
end

FileLogExtendedHandler.PRIORITY = 1

return FileLogExtendedHandler