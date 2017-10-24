baselines
baseline: spec
  <baseline>

 | repository |
 repository := 'github://unchartedworks/SmalltalkVimMode:master'.
  spec for: #common do: [
    spec baseline: 'SmalltalkVimMode' with: [ spec repository: repository ].
 ].