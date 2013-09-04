rendering
renderRow: aRow index: anIndex on: html
	self visibleColumns do: [ :col | 
		col 
		renderCell: aRow
		index: anIndex
		on: html ]