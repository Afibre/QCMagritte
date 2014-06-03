instance creation
on: aLabel condition: aConditionBlock action: anActionBlock 
	^self new
		label: aLabel;
		actionBlock: anActionBlock;
		conditionBlock: aConditionBlock;
		yourself