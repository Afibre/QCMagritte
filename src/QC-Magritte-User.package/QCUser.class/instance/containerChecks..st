magritte-description
containerChecks: aContainer
	<magritteContainer>
	^aContainer
		addCondition: [ :memento | self checkPasswordOnMemento: memento ] labelled: 'Password and password verification do not match';
		yourself