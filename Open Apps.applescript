-- Open applications

tell application "Mail" to launch
tell application "Activity Monitor" to launch
tell application "Safari" to launch
tell application "Reminders" to launch
tell application "Calendar" to launch
tell application "Notes" to launch
tell application "iTunes" to launch
tell application "Skype" to launch
tell application "Skype For Business" to launch
tell application "MiCollab" to launch
tell application "WhatsApp" to launch
tell application "Messages" to launch
tell application "Terminal" to launch
tell application "1Password" to launch
tell application "Contacts" to launch

-- Open work hours log

tell application "Microsoft Excel"
	launch
	open "/Users/corti/Dropbox (POC ETH ID)/polybox/Work hours/2018-work hours.xlsx"
end tell

-- Connect AirPods

activate application "SystemUIServer"
tell application "System Events"
	tell process "SystemUIServer"
		set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
		tell btMenu
			click
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
		end tell
	end tell
end tell