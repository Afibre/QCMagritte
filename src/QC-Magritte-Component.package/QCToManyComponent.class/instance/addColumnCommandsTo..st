private
addColumnCommandsTo: aColumn
	(self canEditColumn: aColumn) ifTrue: [
		aColumn addHeaderCommand: (QCCommand on: (QCMultilanguageString on: 'edit')
			imageUrl: self editIcon
			condition: nil
			action: [ :row | self editColumn: aColumn ]) ].
	(self canRemoveColumn: aColumn) ifTrue: [
		aColumn addHeaderCommand: (QCCommand on: (QCMultilanguageString on: 'remove')
			imageUrl: self removeIcon
			condition: nil
			action: [ :row | self removeColumn: aColumn ]) ].
