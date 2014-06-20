accessing-magritte
checkCrud: aValue
	(aValue includes: 'U') ifTrue: [ self assert: (aValue includes: 'R') ].
	(aValue includes: 'C') ifTrue: [ self assert: (aValue includes: 'R') ].
	(aValue includes: 'D') ifTrue: [ self assert: (aValue includes: 'U') ].