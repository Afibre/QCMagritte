rendering
renderRow: aRow index: anIndex on: html
	self indexFor: aRow put: anIndex.
	self visibleColumns do: [ :col | 
		col 
		renderCell: aRow
		index: anIndex
		on: html ]