customization
removeCommand
	^QCCommand on: 'Remove'
			condition: [ :row | self canRemove: row ]
			action: [ :row | self remove: row ]