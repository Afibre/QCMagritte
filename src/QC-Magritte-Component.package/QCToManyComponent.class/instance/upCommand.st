customization
upCommand
	^QCCommand on: 'Up'
		condition: [ :row | self canMoveUp: row ]
		action: [ :row | self up: row ]