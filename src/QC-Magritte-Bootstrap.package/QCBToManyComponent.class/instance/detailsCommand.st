customization
detailsCommand
	^super detailsCommand
		imageBlock: [ :canvas | canvas tbsGlyphIcon iconTextHeightList ];
		yourself