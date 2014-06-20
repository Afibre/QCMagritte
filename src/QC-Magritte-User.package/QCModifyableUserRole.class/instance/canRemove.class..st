accessing
canRemove: aRow class: aClass 
	self rights do: [:each | (each canRemove: aRow class: aClass) ifTrue: [ ^true ] ].
	^false