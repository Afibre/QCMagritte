instance creation
on: aLabel imageBlock: aBlock condition: aConditionBlock action: anActionBlock 
	^self new
		label: aLabel;
		imageBlock: aBlock;
		actionBlock: anActionBlock;
		conditionBlock: aConditionBlock;
		yourself