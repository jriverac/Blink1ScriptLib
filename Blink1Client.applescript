use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

global gCommand

on init()
	set gCommand to (quoted form of resourcePath()) & "/blink1-tool"
end init

on blink_run(p_color, p_time)
	init()
	try
		do shell script gCommand & " " & "-m " & p_time & " --rgb " & p_color
	end try
end blink_run

on blink(nTimes)
	init()
	try
		do shell script gCommand & " " & "--blink " & nTimes
	end try
end blink

on flash(nTimes)
	init()
	try
		do shell script gCommand & " " & "--flash " & nTimes
	end try
end flash

on red()
	init()
	try
		do shell script gCommand & " " & "--red"
	end try
end red

on green()
	init()
	try
		do shell script gCommand & " " & "--green"
	end try
end green

on blue()
	init()
	try
		do shell script gCommand & " " & "--blue"
	end try
end blue

on cyan()
	init()
	try
		do shell script gCommand & " " & "--cyan"
	end try
end cyan

on magenta()
	init()
	try
		do shell script gCommand & " " & "--magenta"
	end try
end magenta

on yellow()
	init()
	try
		do shell script gCommand & " " & "--yellow"
	end try
end yellow

on off()
	init()
	try
		do shell script gCommand & " " & "--rgb" & " " & "000000"
	end try
end off

on resourcePath()
	tell application "Finder"
		set parentPath to POSIX path of (parent of (path to me) as string)
		set fileName to name of (path to me)

		return parentPath & fileName & "/Contents/Resources"
	end tell
end resourcePath


