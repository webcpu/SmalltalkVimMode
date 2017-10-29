vim-visual-line-mode
copySelectedLines: aKeyboardEvent 
 | text |
 text := editor selection , String cr.
 editor clipboardTextPut: text.
 editor selectAt: markStartIndex.
 ^ self normalMode.