rendering-batch
renderBatchLastOn: html

	self renderAnchorItem: [ self batchPage: self batchMaxPages ] 
		with: [ html twbsIcon: 'fast-forward' ] 
		disabled: self isOnLastPage 
		on: html