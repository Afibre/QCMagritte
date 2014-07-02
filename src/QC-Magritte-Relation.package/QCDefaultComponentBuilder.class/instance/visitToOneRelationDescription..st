visiting-description
visitToOneRelationDescription: aDescription
	(aDescription reportColumnClass == MAOptionDescription defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCRelationColumn ].
	super visitToOneRelationDescription: (aDescription
		stringWriter: QCLabelReflectiveWriter;
		labels: QCLabelReflectiveWriter;
		yourself)