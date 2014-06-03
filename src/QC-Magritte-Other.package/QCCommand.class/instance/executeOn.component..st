accessing
executeOn: aRow component: aComponent
	(self isValidCommandFor: aRow) ifTrue: [ 
		self actionBlock cull: aRow cull: aComponent ]