abstract
keymap
| assocs cmdMap |
	cmdMap := Dictionary new.
		0 to: 255 do: [ :i |
		   cmdMap at: (Character value: i) put: #noop: ].
	assocs := {  
 "Navigation keys"
	  ($h -> #charModeLeft:).
	  ($l -> #charModeRight:).
	  ($j -> #charModeDown:).
	  ($k -> #charModeUp:).
	  ($0 -> #charModeLineBegin:).
	  ($$ -> #charModeLineEnd:). 
	  ($w -> #charModeWordBegin:).
	  ($W -> #charModeWORDBegin:).
	  ($e -> #charModeWordEnd:).
	  ($E -> #charModeWORDEnd:).
	  ($b -> #charModeBackwardWordBegin:).
	  ($B -> #charModeBackwardWORDBegin:).
	  ($g -> #charModeBufferBegin:).
	  ($G -> #charModeBufferEnd:).  

 "Insert text"
	  ($i -> #insertBeforeCursor:).
	  ($a -> #insertAfterCursor:).
	  ($A -> #insertAtEndOfLine:).
	  ($o -> #appendNewLine:).
	  ($O -> #insertNewLine:).
	
	"Delete text" 
	  ($x -> #cut:).
	  ($d -> #cut:). 
	"Simple replace text" 
	  ($r -> #replaceCharacter:).  

	"Copy/Paste text"
   ($y -> #copySelectedRegion:).
	  ($p -> #pasteText:). 

 "Undo/Redo operation"
	  ($u -> #undo:).
	  ((Character value: 18) -> #redoChanges). 
	
	 	 }.
	assocs do: [ :assoc |
		   cmdMap at: assoc key put: assoc value ].
	^ cmdMap
