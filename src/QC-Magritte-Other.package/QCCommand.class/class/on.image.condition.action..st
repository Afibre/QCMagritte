instance creation
on: aLabel image: anUrl condition: aConditionBlock action: anActionBlock 
	^self new
		label: aLabel;
		imageUrl: anUrl;
		actionBlock: anActionBlock;
		conditionBlock: aConditionBlock;
		yourself