visiting-description
visitToManyRelationDescription: aDescription
	(aDescription reportColumnClass == aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCToManyColumn ].
	super visitToManyRelationDescription: 
		(aDescription
			componentClass: QCBExtendedToManyComponent;
			yourself) 
