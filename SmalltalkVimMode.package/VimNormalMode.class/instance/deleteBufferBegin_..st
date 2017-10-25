delete-mode
deleteBufferBegin_: aKeyboardEvent
| start end | 
 start := 1.
	end   := editor string indexOf: (Character cr) startingAt: (editor pointIndex) ifAbsent: (editor string size) + 1.
	Transcript show: (start asString) , ':', (end asString); cr.
	editor selectFrom: start to: end.
	editor cut
