visiting-description
visitMemoDescription: aDescription
	" we only want to replace text input components, not custom components of components of subclasses "
	(aDescription componentClass = MATextAreaComponent)
		ifTrue: [ aDescription
			componentClass: TBSMagritteTextAreaComponent ].
	super visitMemoDescription: aDescription