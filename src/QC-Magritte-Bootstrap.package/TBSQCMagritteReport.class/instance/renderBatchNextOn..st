rendering-batch
renderBatchNextOn: html

	self renderAnchorItem: [ self nextPage ] 
		with: [ html twbsIcon: 'forward' ] 
		disabled: self isOnLastPage 
		on: html