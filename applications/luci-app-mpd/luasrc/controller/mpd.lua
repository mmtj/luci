module("luci.controller.mpd", package.seeall)

function index()
        if not nixio.fs.access("/etc/config/mpd") then
                return
        end

        entry({"admin", "services", "mpd"}, firstchild(), _("MPD"), 30).dependent=false
        entry({"admin", "services", "mpd", "tab_from_cbi"}, cbi("mpd"), _("CBI tab"), 30)
end
