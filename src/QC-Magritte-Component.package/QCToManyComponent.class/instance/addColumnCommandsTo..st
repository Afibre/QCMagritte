private
addColumnCommandsTo: aColumn
	(self canEditColumn: aColumn) ifTrue: [
		aColumn addHeaderCommand: (QCCommand on: (QCMultilanguageString on: 'edit')
			image: (QCLibrary / #editIconPng )
			condition: nil
			action: [ :row | self editColumn: aColumn ]) ].
	(self canRemoveColumn: aColumn) ifTrue: [
		aColumn addHeaderCommand: (QCCommand on: (QCMultilanguageString on: 'remove')
			image: (QCLibrary / #removeIconPng )
			condition: nil
			action: [ :row | self removeColumn: aColumn ]) ].
