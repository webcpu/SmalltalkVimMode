accessing
keymap
| assocs cmdMap |
	cmdMap := Dictionary new.
	0 to: 255 do: [ :i |
	  cmdMap at: (Character value: i) put: #noop: ].
	assocs := {  
 "Navigation keys"
	  ($h -> #cursorLeft:).
	  ($l -> #cursorRight:).
	  ($j -> #cursorDown:).
	  ($k -> #cursorUp:). 
	  ($w -> #cursorWordBegin:).
	  ($W -> #cursorWORDBegin:).
	  ($e -> #cursorWordEnd:).
	  ($E -> #cursorWORDEnd:).
		 ($b -> #cursorBackwardWordBegin:).
	  ($B -> #cursorBackwardWORDBegin:).
		 ($0 -> #cursorLineBegin:).
	  ($$ -> #cursorLineEnd:). 
		 ($^ -> #cursorLineBeginNoneEmpty:).
	  ($g -> #cursorBufferBegin:).
	  ($G -> #cursorBufferEnd:).  
	  (Character arrowLeft -> #cursorLeft:).
	  (Character arrowRight -> #cursorRight:).
	  (Character arrowUp -> #cursorUp:).
	  (Character arrowDown -> #cursorDown:).

 "Insert text"
	  ($i -> #insertBeforeCursor:).
	  ($a -> #insertAfterCursor:).
	  ($A -> #insertAtEndOfLine:).
	  ($o -> #appendNewLine:).
	  ($O -> #insertNewLine:).
	
	"Delete text" 
	  ($x -> #forwardDelete:).

	"Simple replace text" 
	  ($r -> #replaceCharacter:).  

	"Copy/Paste text"
	  	($Y -> #copyLine:).
	  ($p -> #pasteText:). 

 "Undo/Redo operation"
	  ($u -> #undo).
	  ((Character value: 18) -> #redoChanges:). "ctrl + $r" 

	  "($v -> #enableVisualCharMode:)." "$v"
	  ($V -> #enableVisualLineMode:). "$V"
	  "((Character value: 22) -> #tryVisualBlockMode:)." "ctrl + $v"

   ($* -> #emphasisWordUnderCursor:). 

   ($/ -> #comment:).
	
	 	 }.
	assocs do: [ :assoc |
		   cmdMap at: assoc key put: assoc value ].
	^ cmdMap