rendering-batch
renderBatchLastOn: html
	html tbsButtonGroup: [ 
		html tbsButton
			beExtraSmall;
			callback: [ self batchPage: self batchMaxPages ];
			beDisabledIf: [ self isOnLastPage ];
			with: [ html tbsGlyphIcon iconFastForward ] ]
