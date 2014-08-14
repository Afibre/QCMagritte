visiting-description
visitBooleanDescription: aDescription
	(aDescription componentClass = MACheckboxComponent)
		ifTrue: [ aDescription
			componentClass: TBSMagritteCheckboxComponent ].
	super visitBooleanDescription: aDescription