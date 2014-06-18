rendering
renderTableBodyOn: canvas
	self showBody ifTrue: [ 
		self visible isEmpty 
			ifTrue: [ self renderEmptyRowOn: canvas ]
			ifFalse: [
				self visible keysAndValuesDo: [ :index :row | 
					self renderTableRow: row index: index on: canvas ] ] ].
	(self showBatch
		and: [ self hasMoreThanOnePage ])
			ifTrue: [ self renderTableBatchOn: canvas ] 