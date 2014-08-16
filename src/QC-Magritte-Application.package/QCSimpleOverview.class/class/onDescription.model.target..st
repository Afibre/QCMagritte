instance creation
onDescription: aDescription model: aModel target: aTarget
	^self basicNew
	 	initialize: nil description: aDescription target: aTarget;
		yourself