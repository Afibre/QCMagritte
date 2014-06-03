rendering
renderEditCellContent: anObject on: canvas
	| component |
	component := self componentCache at: anObject ifAbsentPut: [ self buildComponentFor: anObject ].
	canvas render: component