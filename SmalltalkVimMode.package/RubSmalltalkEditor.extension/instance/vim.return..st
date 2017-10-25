*SmalltalkVimMode
vim: aKeyboardEvent return: aBlock
	Transcript show: (aKeyboardEvent keyValue asString) ; cr.
	"vim := VimAgent new."
	vim ifNil: [ vim := VimAgent new].	
	^ vim handleInput: aKeyboardEvent for: self.