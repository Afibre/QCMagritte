private
addDefaultCommandsTo: aCommandColumn
	aCommandColumn addHeaderCommand: (QCCommand on: [ self columnChooser buttonText ] condition: nil action: self columnChooser buttonAction).
	aCommandColumn addCommand: (QCCommand on: (QCMultilanguageString on: 'Details')
		image: (QCLibrary / #detailsArrowPng )
		condition: [ :row | self canShowDetails: row ]
		action: [ :row | self showDetails: row ])