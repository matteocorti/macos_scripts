-- get list of open apps
tell application "System Events"
	set allApps to displayed name of (every process whose background only is false) as list
end tell

-- leave some apps open 
set exclusions to {"Script Editor", "Finder"}

-- exclude WD Discovery at home
if computer name of (system info) is "Matteo Corti’s Mac mini" then
	set the end of exclusions to "WD Discovery"
end if

-- quit each app
repeat with thisApp in allApps
	set thisApp to thisApp as text
	if thisApp is not in exclusions then
		tell application thisApp to quit
	end if
end repeat

tell application "Finder" to close every window