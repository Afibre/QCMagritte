visiting
visitToOneRelationDescription: aDescription
	aDescription canExpand ifFalse: [ ^super visitToOneRelationDescription: aDescription ].
	(self target readUsing: aDescription)
		ifNil: [ super visitToOneRelationDescription: aDescription ]
		ifNotNilDo: [ :value | self expandDescription: aDescription for: value ] 