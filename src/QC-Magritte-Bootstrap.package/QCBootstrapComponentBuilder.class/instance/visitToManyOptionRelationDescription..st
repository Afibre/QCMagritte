visiting-description
visitToManyOptionRelationDescription: aDescription
	(aDescription componentClass = QCMultiSelectToManyComponent)
		ifTrue: [ aDescription componentClass: QCBMultiSelectToManyComponent  ].
	super visitToManyOptionRelationDescription: aDescription