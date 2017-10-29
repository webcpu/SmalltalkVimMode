commands
charModeBackwardWordBegin: aKeyboardEvent
	| begin end | 
 begin := editor startIndex.
	end   := self cursorBackwardWordBeginIndex: aKeyboardEvent.
	editor selectFrom: begin to: end.
	^ self