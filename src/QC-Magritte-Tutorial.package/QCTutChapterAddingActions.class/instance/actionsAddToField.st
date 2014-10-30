as yet unclassified
actionsAddToField
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Actions for a field';
		chapter: 'Adding Actions';
		description: 'An action that is relevant for one field only, can be added by setting commands: in the description.';
		addExplanation: 'The command works in the context of the description, so to work on the domain object use a block. ';
"		addCode:'containerActions: aContainer
	<magritteContainer>
	^aContainer 
		addCommand: ''Start'' condition: [ :row | row canStart ] action: [ :row | row start ];
		yourself';
"		yourself.
