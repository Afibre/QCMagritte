rendering-batch
renderBatchItemsOn: html
	self batchPageRangeStart > self defaultBatchPage
		ifTrue: [ self renderAnchorItemDisabledWith: '...' on: html ].
	self batchPageRange do: [ :index |
		
		self renderAnchorItem: [ self batchPage: index ] 
			with: index 
			active: (self batchPage = index)
			on: html ].
	
	self batchPageRangeEnd < (self batchMaxPages - 1)
		ifTrue: [ self renderAnchorItemDisabledWith: '...' on: html ].
		
	(self showBatchFirstLast or: [ self batchPageRangeEnd = self batchMaxPages ])
		ifFalse: [
			self renderAnchorItem: [ self batchPage: self batchMaxPages ] 
				with: self batchMaxPages
				active: false 
				on: html ]