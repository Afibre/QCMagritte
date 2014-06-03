visiting-description
visitElementDescription: aDescription
	(aDescription reportColumnClass == aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCDescribedColumn ].
	super visitElementDescription: aDescription