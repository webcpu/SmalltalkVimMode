commands
nonAlphanums
	^ Character allCharacters select: [ :x | x isAlphaNumeric not ]