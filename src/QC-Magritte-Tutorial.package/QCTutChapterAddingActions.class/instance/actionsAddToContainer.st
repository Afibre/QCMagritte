as yet unclassified
actionsAddToContainer
	<tutorial>
	^QCTutorial new
		priority: 10;
		title: 'Actions for the whole entity';
		chapter: 'Adding Actions';
		description: 'In this chapter we will go into some more details of the descriptions, and some of the properties.';
		addExplanation: 'An action that is relevant for the whole entity, can be added as a
container action.';
		addExplanation: 'A tutorial chapter can switch to its first page ';
		addCode:'containerActions: aContainer
	<magritteContainer>
	^aContainer 
		addCommand: ''Start'' condition: [ :row | row canStart ] action: [ :row | row start ];
		yourself';
		yourself.
