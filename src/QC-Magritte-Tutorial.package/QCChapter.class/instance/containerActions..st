magritte-description
containerActions: aContainer
	<magritteContainer>
	^aContainer 
		addCommand: 'Start' condition: [ :row | row canStart ] action: [ :row | row start ];
		yourself