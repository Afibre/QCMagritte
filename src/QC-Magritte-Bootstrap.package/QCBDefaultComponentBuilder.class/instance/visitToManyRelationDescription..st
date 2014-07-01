visiting-description
visitToManyRelationDescription: aDescription
	(aDescription reportColumnClass == aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCBToManyColumn ].
	super visitToManyRelationDescription: 
		(aDescription
			componentClass: QCBQueriedToManyComponent;
			yourself) 
