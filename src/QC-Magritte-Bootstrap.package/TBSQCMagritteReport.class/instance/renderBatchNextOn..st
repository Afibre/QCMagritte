rendering-batch
renderBatchNextOn: html
	html tbsButtonGroup: [ 
		html tbsButton
			callback: [ self nextPage ];
			beDisabledIf: [ self isOnLastPage ];
			beExtraSmall;
			with: [ html tbsGlyphIcon iconForward ] ]