default-mode
cursorLineBeginNoneEmpty: aKeyboardEvent   
 ^ (self isBlankLine)
    ifTrue: [ self cursorLineBeginNoneEmptyInBlankLine: aKeyboardEvent ]
    ifFalse: [ self cursorLineBeginNoneEmptyInNonBlankLine: aKeyboardEvent ]

  
