visiting-description
visitSingleOptionDescription: aDescription
	" we only want to replace select list components, not custom components or components of subclasses "
	(aDescription componentClass = QCDynamicSelectListComponent)
		ifTrue: [ aDescription
			componentClass: QCBDynamicSelectListComponent ].
	(aDescription componentClass = MASelectListComponent)
		ifTrue: [ aDescription
			componentClass: TBSMagritteSelectListComponent ].
	super visitSingleOptionDescription: aDescription