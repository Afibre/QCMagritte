magritte-dummy
root
	self parent ifNil: [ ^self ].
	^self parent root