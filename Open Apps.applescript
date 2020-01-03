-- Open applications

tell application "1Password" to launch
tell application "Activity Monitor" to launch
tell application "Calendar" to launch
tell application "Contacts" to launch
tell application "Mail" to launch
tell application "Messages" to launch
tell application "Microsoft Excel" to launch
tell application "Microsoft Teams" to launch
tell application "Music" to launch
tell application "Notes" to launch
tell application "Podcasts" to launch
tell application "Reminders" to launch
tell application "Safari" to launch
tell application "Skype" to launch
tell application "Skype for Business" to launch
tell application "WhatsApp" to launch
tell application "Terminal" to launch
tell application "Twitter" to launch

-- home

if computer name of (system info) is "Matteo Corti’s MacBook Pro" then
	-- Open work hours log
	tell application "Microsoft Excel" to open "/Users/corti/OneDrive - ETH Zürich/Work hours/2020-work hours.xlsx"
	tell application "Microsoft OneNote" to launch
	tell application "Microsoft Outlook" to launch
end if


-- Connect AirPods

activate application "SystemUIServer"
tell application "System Events"
	
	tell process "SystemUIServer"
		set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
		
		tell btMenu
			
			click
			
			if menu item "AirPods di Teo" of menu 1 exists then
				
				tell (menu item "AirPods di Teo" of menu 1)
					click
					if exists menu item "Connect" of menu 1 then
						click menu item "Connect" of menu 1
					else
						tell btMenu
							click
							key code 53
							key code 53
						end tell
					end if
				end tell
				
			end if
			
		end tell
	end tell
end tell

-- set the sound volume
set volume output volume 40 --100%

-- unmute
set volume without output muted