customization
detailsCommand
	^super detailsCommand
		imageBlock: [ :canvas | canvas tbsGlyphIcon iconPlay ];
		yourself