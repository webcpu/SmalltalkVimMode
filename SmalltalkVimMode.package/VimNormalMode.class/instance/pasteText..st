default-mode
pasteText: aKeyboardEvent
	| text pasteLines paste pasteCR |
	text := editor clipboardText. 
 pasteCR := [ 
	  self cursorLineEnd: aKeyboardEvent. 
	  editor paste . 
	  ^ self normalMode ]. 

	pasteLines := [ 
			self cursorLineEnd: aKeyboardEvent. 
    editor paste. 
    self cursorLineBegin: aKeyboardEvent.
  ]. 

 paste :=  [ editor paste ].
	
"	empty"
	text isEmpty 
	  ifTrue: [ ^ self normalMode ]. 
"cr"
	text = String cr 
	  ifTrue: pasteCR. 
"lines/other"
	text first = Character cr 
	  ifTrue: pasteLines
		 ifFalse: paste.
	^ self normalMode.