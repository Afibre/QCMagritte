rendering-batch
renderBatchLastOn: html

	self renderAnchorItem: [ self batchPage: self batchMaxPages ] 
		with: [ html tbsGlyphIcon iconFastForward  ] 
		disabled: self isOnLastPage 
		on: html