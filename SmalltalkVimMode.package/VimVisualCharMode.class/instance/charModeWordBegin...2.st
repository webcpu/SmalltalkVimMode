commands
charModeWordBegin: aKeyboardEvent
	| begin end | 
 begin := editor startIndex.
	end   := self charModeWordBeginStopIndex.
	editor selectFrom: begin to: end.
	^ self