magritte-description
navigationCommands: aContainer
	<magritteContainer>
	^aContainer
		addCustomCommand: 'Prev' condition: [ self hasPrevious ] action: [ :row :component | self previousOn: component ];
		addCustomCommand: 'Next' condition: [ self hasNext ] action: [ :row :component | self nextOn: component ];
		yourself