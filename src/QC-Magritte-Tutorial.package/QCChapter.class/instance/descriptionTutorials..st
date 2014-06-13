magritte-description
descriptionTutorials: aContainer
"	<magritteContainer>
"	self tutorials do: [ :each |
		aContainer add: (self descriptionForTutorial: each) ].
	^aContainer