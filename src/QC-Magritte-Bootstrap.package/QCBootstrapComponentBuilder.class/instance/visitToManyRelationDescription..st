visiting-description
visitToManyRelationDescription: aDescription
	(aDescription reportColumnClass == aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCBToManyColumn ].
	(aDescription componentClass == MAOneToManyComponent)
		ifTrue: [ aDescription componentClass: QCBQueriedToManyComponent;
			queryComponentClass: QCBQueriedToManyComponent ].
	super visitToManyRelationDescription: aDescription