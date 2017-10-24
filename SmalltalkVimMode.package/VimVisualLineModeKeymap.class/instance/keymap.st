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
	  ($g -> #lineModeMarkBufferBegin:).
	  ($G -> #lineModeMarkBufferEnd:).  


	"Delete text" 
	  ($x -> #forwardDelete:).
	  ($d -> #deleteLine:). 
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
