customization
editCommand
	^QCCommand on: 'Edit'
		condition: [ :row | self canEdit: row ]
		action: [ :row | self edit: row ]