module("luci.controller.mpd", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/mpd") then
		return
	end
	
	entry({"admin", "services", "mpd"}, cbi("mpd"), _("MPD server"), 30).dependent=true
end
