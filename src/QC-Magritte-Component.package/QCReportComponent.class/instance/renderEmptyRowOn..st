rendering
renderEmptyRowOn: canvas
	canvas tableRow
		class: 'empty';
		with: [ 
			canvas tableData
				colSpan: self visibleColumns size;
				with: self tableEmpty ]