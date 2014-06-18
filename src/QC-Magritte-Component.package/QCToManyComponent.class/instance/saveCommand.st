customization
saveCommand
	^QCCommand on: 'Save'
		condition: [ :row | self canStopEdit: row ]
		action: [ :row | self saveEdit: row ]