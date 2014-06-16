visiting-description
visitStringDescription: aDescription
	" we only want to replace text input components, not custom components of components of subclasses "
	(aDescription componentClass = MATextInputComponent)
		ifTrue: [ aDescription
			componentClass: TBSMagritteTextInputComponent ].
	super visitStringDescription: aDescription