--
		local saveTID, stringList, newString
		
		set saveTID to AppleScript's text item delimiters
		set AppleScript's text item delimiters to fString
		set stringList to every text item of theString
		set AppleScript's text item delimiters to rString
		set newString to stringList as string
		set AppleScript's text item delimiters to saveTID
		return newString
		*)