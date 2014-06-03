initialization
buildQueryComponent
	^self originalQuery asComponent addValidatedForm
		onAnswer: [ :anAnswer | self closeOn: anAnswer ];
		yourself