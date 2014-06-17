visiting-description
visitReferenceDescription: aDescription
	" we only want to replace select list components, not custom components or components of subclasses "
	(aDescription componentClass = QCDynamicSelectListComponent)
		ifTrue: [ aDescription
			componentClass: QCBDynamicSelectListComponent ].
	super visitReferenceDescription: aDescription