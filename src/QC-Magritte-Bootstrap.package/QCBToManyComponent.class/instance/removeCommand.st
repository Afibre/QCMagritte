customization
removeCommand
	^super removeCommand
		imageBlock: [ :canvas | canvas tbsGlyphIcon iconRemove ];
		yourself