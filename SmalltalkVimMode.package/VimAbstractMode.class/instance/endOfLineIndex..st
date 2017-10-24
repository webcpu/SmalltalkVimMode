commands
endOfLineIndex: characterIndex
	^ editor string indexOf: (Character cr) startingAt: characterIndex ifAbsent: (editor string size) + 1.