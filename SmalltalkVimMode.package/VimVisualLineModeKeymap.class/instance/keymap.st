abstract
keymap
| assocs cmdMap |
	cmdMap := Dictionary new.
		0 to: 255 do: [ :i |
		   cmdMap at: (Character value: i) put: #noop: ].
	assocs := {  
 "Navigation keys"
	  ($h -> #noop:).
	  ($l -> #noop:).
	  ($j -> #lineModeMarkDown:).
	  ($k -> #lineModeMarkUp:).
	  ($0 -> #cursorLineBegin:).
	  ($$ -> #cursorLineEnd:). 
	  ($w -> #cursorWordBegin:).
	  ($W -> #cursorWORDBegin:).
	  ($e -> #cursorWordEnd:).
	  ($E -> #cursorWORDEnd:).
	  ($b -> #cursorBackwardWordBegin:).
	  ($B -> #cursorBackwardWORDBegin:).
	  ($g -> #lineModeMarkBufferBegin:).
	  ($G -> #lineModeMarkBufferEnd:).  

 "Insert text"
	  ($i -> #insertBeforeCursor:).
	  ($a -> #insertAfterCursor:).
	  ($A -> #insertAtEndOfLine:).
	  ($o -> #appendNewLine:).
	  ($O -> #insertNewLine:).
	
	"Delete text" 
	  ($x -> #forwardDelete:).
	  ($d -> #deleteLine:). 
	"Simple replace text" 
	  ($r -> #replaceCharacter:).  

	"Copy/Paste text"
   ($y -> #copySelectedRegion:).
	  ($p -> #pasteText:). 

 "Undo/Redo operation"
	  ($u -> #undo).
	  ((Character value: 18) -> #redoChanges). 
	
	  (Character escape -> #enableVimNormalMode). 
	 	 }.
	assocs do: [ :assoc |
		   cmdMap at: assoc key put: assoc value ].
	^ cmdMap
