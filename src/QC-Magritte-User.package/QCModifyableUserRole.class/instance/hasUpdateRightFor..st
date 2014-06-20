accessing
hasUpdateRightFor: aClass 
	self rights do: [ :each | (each hasUpdateRightFor: aClass) ifTrue: [ ^true ] ].
	^false