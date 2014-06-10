visiting-description
visitRelationDescription: aDescription
	| columnClass |
	columnClass := aDescription reportColumnClass.
	(columnClass = aDescription class defaultReportColumnClass) ifTrue: [ aDescription reportColumnClass: QCRelationColumn ].
	^super visitRelationDescription: aDescription