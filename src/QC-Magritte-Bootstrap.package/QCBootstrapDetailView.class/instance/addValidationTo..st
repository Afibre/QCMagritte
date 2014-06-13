initialization
addValidationTo: aComponent
	(self canEdit: self target)
		ifTrue: [ aComponent addValidatedTbsFormWithButtons ]
		ifFalse: [ aComponent addTbsFormWithButtons: self buttons ]