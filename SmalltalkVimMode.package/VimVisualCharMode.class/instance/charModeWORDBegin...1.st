commands
charModeWORDBegin: aKeyboardEvent
	| begin end | 
 begin := editor startIndex.
	end   := self charModeWORDBeginStopIndex.
	editor selectFrom: begin to: end.
	^ self