commands
charModeLineBeginAbove: aKeyboardEvent
	| begin end | 
	(editor startIndex) = 1
	 ifTrue: [ ^ true ].
 begin := self charModeLineBeginStartIndex.
	end   := self markIndex.
	Transcript show: begin asString, ':', end asString; cr.
	editor selectFrom: begin to: end.
	^ self