commands
charModeLineBeginBelow: aKeyboardEvent
	| begin end | 
 begin := editor startIndex.
	end   := self charModeLineBeginStopIndex.
	editor selectFrom: begin to: end.
	^ self