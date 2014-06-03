rendering
reRenderRow: aRow on: html
	aRow ifNotNil: [ 
		| index |
		index := self indexFor: aRow.
		html tableRow
			class: (self rowStyleForNumber: index);
			passenger: aRow;
			with: [ self renderRow: aRow index: index on: html ] ]