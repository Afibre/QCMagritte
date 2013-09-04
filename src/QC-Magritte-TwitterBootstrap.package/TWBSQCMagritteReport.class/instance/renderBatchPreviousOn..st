rendering-batch
renderBatchPreviousOn: html

	self renderAnchorItem: [ self previousPage ] 
		with: [ html twbsIcon: 'backward' ] 
		disabled: self isOnFirstPage 
		on: html