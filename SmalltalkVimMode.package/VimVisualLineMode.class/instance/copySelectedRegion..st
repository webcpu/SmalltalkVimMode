vim-visual-line-mode
copySelectedRegion: aKeyboardEvent
 | text |
 editor copySelection.
 text := editor clipboardText.
 text last = Character cr 
  ifFalse: [ editor clipboardTextPut: text , String cr ].
 editor selectAt: markStartIndex.
 ^ self normalMode.