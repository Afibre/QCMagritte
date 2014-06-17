accessing
cull: aRow cull: aComponent
	self actionBlock isSymbol ifTrue: [ ^aRow perform: self actionBlock ].
	^self actionBlock cull: aRow cull: aComponent