m = Map("mpd", "MPD server",
	"Music Player Daemon (MPD) is a flexible, powerful, server-side application for playing music.")

s = m:section(TypedSection, "mpd", "MPD server settings")
s.anonymous = true

enabled = s:option(Flag, "enabled", "Enable")

port = s:option(Value, "port", "Port", "Listening port (default: 6600)")
music_directory = s:option(Value, "music_directory", "music_directory") 
playlist_directory = s:option(Value, "playlist_directory", "playlist_directory")
db_file = s:option(Value, "db_file", "db_file")
log_file = s:option(Value, "log_file", "log_file")
pid_file = s:option(Value, "pid_file", "pid_file")
state_file = s:option(Value, "state_file", "state_file")
sticker_file = s:option(Value, "sticker_file", "sticker_file")

return m
