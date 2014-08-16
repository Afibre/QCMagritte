visiting
visitToOneRelationDescription: aDescription
	| sample |
	aDescription canExpand ifFalse: [ ^super visitToOneRelationDescription: aDescription ].
	self target isCollection
		ifTrue: [ 
			self target ifEmpty: [ ^super visitToOneRelationDescription: aDescription ].
			sample := self target anyOne ]
		ifFalse: [ sample := self target ].
	(sample readUsing: aDescription)
		ifNil: [ super visitToOneRelationDescription: aDescription ]
		ifNotNilDo: [ :value | self expandDescription: aDescription for: value ]