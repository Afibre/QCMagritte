visiting-description
visitToOneRelationDescription: aDescription
	(aDescription reportColumnClass = aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCBRelationColumn ].
	^super visitRelationDescription: aDescription