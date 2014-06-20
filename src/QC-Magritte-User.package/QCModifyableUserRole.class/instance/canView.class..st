accessing
canView: aRow class: aModelClass 
	self rights do: [ :each | (each canView: aRow class: aModelClass) ifTrue: [ ^true ] ].
	^false