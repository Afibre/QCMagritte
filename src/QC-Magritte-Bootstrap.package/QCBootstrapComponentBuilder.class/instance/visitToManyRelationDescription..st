visiting-description
visitToManyRelationDescription: aDescription
	(aDescription reportColumnClass == aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCBToManyColumn ].
	(aDescription componentClass == MAOneToManyComponent)
		ifTrue: [ 
			(aDescription isComplexFor: self target)
				ifTrue: [ 
					aDescription componentClass: QCBQueriedToManyComponent;
						queryComponentClass: QCBQueriedToManyComponent ]
				ifFalse: [ aDescription componentClass: QCBToManyComponent ] ].
	super visitToManyRelationDescription: aDescription