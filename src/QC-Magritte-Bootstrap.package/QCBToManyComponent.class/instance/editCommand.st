customization
editCommand
	^super editCommand
		imageBlock: [ :canvas | canvas tbsGlyphIcon: #iconEdit ];
		yourself