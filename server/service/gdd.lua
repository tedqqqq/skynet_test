local skynet = require "skynet"
local sharedata = require "sharedata"
local service = require "service"
local gdd = require "gddata.gdd"

function init ()
  sharedata.new("gdd", gdd)
end

service.init {
	init = init
}