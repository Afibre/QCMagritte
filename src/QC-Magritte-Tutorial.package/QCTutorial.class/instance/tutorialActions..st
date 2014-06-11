magritte-description
tutorialActions: aContainer
	<magritteContainer>
	self commands do: [ :each |
		aContainer addCustomCommand: each ].
	^aContainer