rendering
renderTableRow: aRow index: anIndex on: canvas
	canvas tableRow
		class: (self rowStyleFor: aRow withIndex: anIndex);
		passenger: aRow;
		with: [ self renderRow: aRow index: anIndex on: canvas ]