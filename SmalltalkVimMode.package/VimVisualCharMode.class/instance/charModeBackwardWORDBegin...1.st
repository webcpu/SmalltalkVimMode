commands
charModeBackwardWORDBegin: aKeyboardEvent
	| begin end | 
 begin := editor startIndex.
	end   := self cursorBackwardWORDBeginIndex: aKeyboardEvent.
	editor selectFrom: begin to: end.
	^ self