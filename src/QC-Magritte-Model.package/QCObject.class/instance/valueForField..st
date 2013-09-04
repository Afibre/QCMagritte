accessing
valueForField: aString
	self magritteDescription do: [ :each |
		(each label matches: aString) ifTrue: [ ^self readUsing: each ] ].
	^nil