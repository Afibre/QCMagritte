accessing
displayName
	self target isModel ifTrue: [ ^self magritteDescription label ].
	(self target parent isKindOf: QCMagritteQuery) ifTrue: [ ^self magritteDescription label ].
	^self magritteDescription label, ' ', ((QCMultilanguageString on: 'of') greaseString), ' ', self target displayName greaseString