magritte-description
tutorialActions: aContainer
	<magritteContainer>
	self commands do: [ :each |
		aContainer addCommand: each ].
	^ aContainer