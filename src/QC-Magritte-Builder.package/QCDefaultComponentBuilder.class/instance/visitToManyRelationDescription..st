visiting-description
visitToManyRelationDescription: aDescription
	(aDescription reportColumnClass == aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCToManyColumn ].
	(aDescription componentClass = aDescription class defaultComponentClass) ifTrue: [ 
		aDescription
			componentClass: QCQueriedToManyComponent;
			queryComponentClass: QCQueriedToManyComponent ].
	^super visitToManyRelationDescription: aDescription