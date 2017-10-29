commands
copySelectedRegion: aKeyboardEvent
 editor copySelection.
 editor selectAt: markStartIndex.
 ^ self normalMode.