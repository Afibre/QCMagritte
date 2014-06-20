accessing
canEdit: aRow class: aModelClass 
	self roles do: [ :each | (each canEdit: aRow class: aModelClass) ifTrue: [ ^true ] ].
	^false