rendering
renderRow: aRow index: anIndex on: html
	self indexFor: aRow put: anIndex.
	aRow ifNotNil: [
		self visibleColumns do: [ :col | 
			col 
				renderCell: aRow
				index: anIndex
				on: html ] ]