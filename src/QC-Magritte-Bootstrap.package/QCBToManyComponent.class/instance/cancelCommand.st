customization
cancelCommand
	^super cancelCommand
		imageBlock: [ :canvas | canvas tbsGlyphIcon: #iconCancel ];
		yourself