rendering-batch
renderBatchNextOn: html

	self renderAnchorItem: [ self nextPage ] 
		with: [ html tbsGlyphIcon iconForward ] 
		disabled: self isOnLastPage 
		on: html