accessing
getMode: aKeyboardEvent
 mode isNil | (aKeyboardEvent keyCharacter = Character escape)
  ifTrue: [ ^ VimAbstractMode normalMode ]
  ifFalse: [^  mode ].
