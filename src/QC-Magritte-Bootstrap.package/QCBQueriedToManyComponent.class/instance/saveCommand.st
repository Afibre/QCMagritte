customization
saveCommand
	^super saveCommand
		imageBlock: [ :canvas | canvas tbsGlyphIcon iconSave ];
		yourself