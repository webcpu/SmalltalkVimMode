commands
charModeLineBeginAbove: aKeyboardEvent
	| begin end | 
	(editor startIndex) = 1
	 ifTrue: [ ^ self ].
 begin := self charModeLineBeginStartIndex.
	end   := markIndex.
	Transcript show: begin asString, ':', end asString; cr.
	editor selectFrom: begin to: end.
	^ self