accessing
executeOn: aRow component: aComponent
	(self isValidCommandFor: aRow component: aComponent) ifTrue: [
		self actionBlock isSymbol
			ifTrue: [ aRow perform: self actionBlock ]
			ifFalse: [ self actionBlock cull: aRow cull: aComponent ] ]