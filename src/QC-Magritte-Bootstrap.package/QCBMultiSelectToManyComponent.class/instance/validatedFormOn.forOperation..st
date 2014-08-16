customization
validatedFormOn: result forOperation: aString
	^ result asComponent
		addMessage: aString , ' ' , self selected label;
		addValidatedFormWithButtons;
		yourself