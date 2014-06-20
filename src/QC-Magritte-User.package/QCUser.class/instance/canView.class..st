accessing
canView: aRow class: aModelClass 
	self roles do: [ :each | (each canView: aRow class: aModelClass) ifTrue: [ ^true ] ].
	^false