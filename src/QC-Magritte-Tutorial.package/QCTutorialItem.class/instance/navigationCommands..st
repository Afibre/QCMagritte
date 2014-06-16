magritte-description
navigationCommands: aContainer
	<magritteContainer>
	^aContainer
		addCommand: 'Prev' condition: [ self hasPrevious ] action: [ :row :component | self previousOn: component ];
		addCommand: 'Next' condition: [ self hasNext ] action: [ :row :component | self nextOn: component ];
		yourself