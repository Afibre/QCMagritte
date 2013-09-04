as yet unclassified
renderButton: aButton on: html
	| label |
	(aButton isKindOf: Association) 
		ifTrue: [ label := QCMultilanguageString on: aButton value ]
		ifFalse: [ label := aButton value ].
	html submitButton
		accessKey: label first;
		callback: [ self execute: aButton key ];
		text: label