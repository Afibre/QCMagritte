accessing
canRemove: aRow class: aModelClas 
	self roles do: [ :each | (each canRemove: aRow class: aModelClas) ifTrue: [ ^true ] ].
	^false