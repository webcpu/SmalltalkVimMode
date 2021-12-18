baselines
baseline: spec
  <baseline>

 spec
  for: #('pharo6.x' 'pharo7.x' 'pharo8.x' 'pharo9.x')
  do: [ 
	  spec package: 'SmalltalkVimMode'.
   spec group: 'default' with: #('SmalltalkVimMode') ]
