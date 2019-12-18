m = Map("mpd", "MPD")

s = m:section(TypedSection, "settings", "Settings")
s.addremove = true

foo = s:option(Value, "foo", "Foo", "foo value, usually bar")
foo.optional = true

return m
