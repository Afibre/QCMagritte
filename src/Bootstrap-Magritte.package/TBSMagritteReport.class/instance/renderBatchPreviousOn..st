rendering-batch
renderBatchPreviousOn: html

	self renderAnchorItem: [ self previousPage ] 
		with: [ html tbsGlyphIcon iconBackward  ] 
		disabled: self isOnFirstPage 
		on: html