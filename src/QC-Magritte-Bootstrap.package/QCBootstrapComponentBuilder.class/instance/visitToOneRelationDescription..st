visiting-description
visitToOneRelationDescription: aDescription
	(aDescription componentClass = MAExternalEditorComponent) ifTrue: [ 
		aDescription componentClass: QCBExternalEditorComponent ].
	(aDescription reportColumnClass = aDescription class defaultReportColumnClass)
		ifTrue: [ aDescription reportColumnClass: QCBRelationColumn ].
	^super visitRelationDescription: aDescription