initialization
addValidationTo: aComponent
	(self canEdit: self target)
		ifTrue: [ aComponent addValidatedFormWithButtons ]
		ifFalse: [ aComponent addFormWithButtons: self buttons ]