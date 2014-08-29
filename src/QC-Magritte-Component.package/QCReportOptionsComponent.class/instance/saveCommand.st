accessing
saveCommand
	^saveCommand ifNil: [ saveCommand := 
		QCCommand on: 'Save'
			condition: [ self canSave ]
			action: [ self parent saveRowCount ] ]