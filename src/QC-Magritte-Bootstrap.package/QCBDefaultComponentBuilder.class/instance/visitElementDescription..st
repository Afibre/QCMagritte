visiting-description
visitElementDescription: aDescription
	| columnClass |
	columnClass := aDescription reportColumnClass.
	(columnClass = aDescription class defaultReportColumnClass) ifTrue: [ aDescription reportColumnClass: QCDescribedColumn ].
	^super visitElementDescription: aDescription