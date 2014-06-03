accessing
saveCommand
	^saveCommand ifNil: [ saveCommand := 
		QCCommand on: 'Save'
			condition: nil
			action: [ self parent saveRowCount ] ]