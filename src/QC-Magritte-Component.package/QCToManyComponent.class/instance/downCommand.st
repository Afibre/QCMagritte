customization
downCommand
	^QCCommand on: 'Down'
		condition: [ :row | self canMoveDown: row ]
		action: [ :row | self down: row ]