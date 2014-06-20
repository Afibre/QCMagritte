rendering
renderUnselectedColumnsOn: canvas
	canvas tbsColumn
		mediumSize: 6;
		with: [ super renderUnselectedColumnsOn: canvas ]