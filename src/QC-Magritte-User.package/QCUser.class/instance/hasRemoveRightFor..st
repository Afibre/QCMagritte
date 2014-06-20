security
hasRemoveRightFor: aClass 
	self roles do: [ :each | (each hasRemoveRightFor: aClass) ifTrue: [ ^true ] ].
	^false