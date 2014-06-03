visiting
visitDescription: aDescription
	aDescription label: (self mulitLangStringFor: aDescription label).
	aDescription comment: (self mulitLangStringFor: aDescription comment).
	aDescription group: (self mulitLangStringFor: aDescription group).
	aDescription requiredErrorMessage: (self mulitLangStringFor: aDescription requiredErrorMessage).
	aDescription multipleErrorsMessage: (self mulitLangStringFor: aDescription multipleErrorsMessage).
	aDescription kindErrorMessage: (self mulitLangStringFor: aDescription kindErrorMessage).
	aDescription conflictErrorMessage: (self mulitLangStringFor: aDescription conflictErrorMessage).
	super visitDescription: aDescription