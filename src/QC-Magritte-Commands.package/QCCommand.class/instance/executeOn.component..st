accessing
executeOn: aRow component: aComponent
	(self isValidCommandFor: aRow component: aComponent) ifTrue: [
		self actionBlock isSymbol
			ifTrue: [ 
				(self actionBlock endsWith: ':') ifTrue: [
					aRow perform: self actionBlock with: aComponent]
				ifFalse: 
					[aRow perform: self actionBlock ]]
			ifFalse: [ self actionBlock cull: aRow cull: aComponent ] ]