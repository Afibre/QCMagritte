security
hasUpdateRightFor: aClass 
	self roles do: [ :each | (each hasUpdateRightFor: aClass) ifTrue: [ ^true ] ].
	^false