delete-mode
deleteLineBegin_: aKeyboardEvent
	| start end |
	end := editor pointIndex.
	self cursorLineBegin: aKeyboardEvent.
	start := editor pointIndex.
	start = end
		ifFalse: [ editor selectFrom: start to: end - 1.
			editor cut ]