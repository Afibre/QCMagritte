actions
execute: aBlock with: aRow 
	aBlock isSymbol ifTrue: [ ^aRow perform: aBlock ].
	^aBlock cull: aRow cull: self component