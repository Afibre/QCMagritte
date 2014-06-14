visiting-description
visitStringDescription: aDescription
	(aDescription componentClass = aDescription class defaultComponentClass)
		ifTrue: [ aDescription
			componentClass: TBSMagritteTextInputComponent ].
	super visitStringDescription: aDescription