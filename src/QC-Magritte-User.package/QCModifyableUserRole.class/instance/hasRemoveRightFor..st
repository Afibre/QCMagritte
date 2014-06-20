accessing
hasRemoveRightFor: aClass 
	self rights do: [ :each | (each hasRemoveRightFor: aClass) ifTrue: [ ^true ] ].
	^false