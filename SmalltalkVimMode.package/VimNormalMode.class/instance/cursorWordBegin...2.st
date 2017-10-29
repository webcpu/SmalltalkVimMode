default-mode
cursorWordBegin: aKeyboardEvent
	| index |
	index := self cursorWordBeginIndex.
	editor selectAt: index.
	^ self normalMode