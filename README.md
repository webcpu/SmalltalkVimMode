# SmalltalkVimMode

```
baseline   := 'SmalltalkVimMode'.
repository := 'github://unchartedworks/SmalltalkVimMode:master'. 
metacello  := [ Metacello new baseline: baseline; repository: repository ].
get        := [ metacello value get ].
load       := [ metacello value onConflict: [:ex | ex allow]; load ].
actions    := {get . load}.
apply      := [ :action | action value ].
actions do: apply.
```
