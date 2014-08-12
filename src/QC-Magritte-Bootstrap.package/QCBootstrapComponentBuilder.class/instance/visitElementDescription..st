visiting-description
visitElementDescription: aDescription
	| columnClass |
	columnClass := aDescription reportColumnClass.
	(columnClass = aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCBDescribedColumn ].
	(aDescription componentClass = MATextInputComponent)
		ifTrue: [ aDescription
			componentClass: TBSMagritteTextInputComponent ].
	^super visitElementDescription: aDescription