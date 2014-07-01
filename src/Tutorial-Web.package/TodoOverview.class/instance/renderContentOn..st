rendering
renderContentOn: canvas
	canvas tbsRow: [ 
		self detailsPage ifNil: [ ^super renderContentOn: canvas ].
		canvas tbsColumn
			mediumSize: 6;
			with: [ super renderContentOn: canvas ].
		canvas tbsColumn
			mediumSize: 6;
			with: [ self renderDetailPageOn: canvas ] ]