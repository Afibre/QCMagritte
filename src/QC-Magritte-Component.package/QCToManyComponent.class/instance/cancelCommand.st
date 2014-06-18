customization
cancelCommand
	^QCCommand on: 'Cancel'
		condition: [ :row | self canStopEdit: row ]
		action: [ :row | self cancelEdit: row ]