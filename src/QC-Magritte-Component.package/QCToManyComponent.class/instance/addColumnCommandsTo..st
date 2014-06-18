private
addColumnCommandsTo: aColumn
	(self canEditColumn: aColumn) ifTrue: [
		aColumn addHeaderCommand: (QCCommand on: (QCMultilanguageString on: 'edit')
			condition: nil
			action: [ :row | self editColumn: aColumn ]) ].
	(self canRemoveColumn: aColumn) ifTrue: [
		aColumn addHeaderCommand: (QCCommand on: (QCMultilanguageString on: 'remove')
			condition: nil
			action: [ :row | self removeColumn: aColumn ]) ].
