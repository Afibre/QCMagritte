customization
detailsCommand
	^QCCommand on: 'Details'
		condition: [ :row | self canShowDetails: row ]
		action: [ :row | self showDetails: row ]