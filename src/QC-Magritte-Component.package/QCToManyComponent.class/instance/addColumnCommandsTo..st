private
addColumnCommandsTo: aColumn
	(self canEditColumn: aColumn) ifTrue: [
		aColumn addHeaderCommand: (QCCommand on: (QCMultilanguageString on: 'edit')
			image: self editIcon
			condition: nil
			action: [ :row | self editColumn: aColumn ]) ].
	(self canRemoveColumn: aColumn) ifTrue: [
		aColumn addHeaderCommand: (QCCommand on: (QCMultilanguageString on: 'remove')
			image: self removeIcon
			condition: nil
			action: [ :row | self removeColumn: aColumn ]) ].
