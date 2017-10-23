commands
enableVisualCharMode: aKeyboarEvent
 | mode index |
 mode := self class visualCharMode: editor.
 index := editor pointIndex.
 editor selectFrom: index to: index.
 ^ mode