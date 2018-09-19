-- get list of open apps
tell application "System Events"
	set allApps to displayed name of (every process whose background only is false) as list
end tell

-- leave some apps open 
set exclusions to {"Script Editor", "Finder"}

-- exclude iTunes at home
set computer_name to computer name of (system info)

-- quit each app
repeat with thisApp in allApps
	set thisApp to thisApp as text
	if thisApp is not in exclusions then
		tell application thisApp to quit
	end if
end repeat

tell application "Finder" to close every window