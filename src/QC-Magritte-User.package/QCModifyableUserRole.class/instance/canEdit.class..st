accessing
canEdit: aRow class: aModelClass 
	self rights do: [ :each | (each canEdit: aRow class: aModelClass) ifTrue: [ ^true ] ].
	^false