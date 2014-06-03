rendering
renderTableBodyOn: canvas
	self showBody ifTrue: [ 
		self visible isEmpty 
			ifTrue: [ 
				canvas tableRow
					class: 'empty';
					with: [ 
					canvas tableData
							colSpan: self visibleColumns size;
							with: self tableEmpty ] ]
			ifFalse: [
				self visible keysAndValuesDo: [ :index :row | 
					canvas tableRow
						class: (self rowStyleForNumber: index);
						passenger: row;
						with: [ self renderRow: row index: index on: canvas ] ] ] ].
	(self showBatch
		and: [ self hasMoreThanOnePage ])
			ifTrue: [ self renderTableBatchOn: canvas ] 