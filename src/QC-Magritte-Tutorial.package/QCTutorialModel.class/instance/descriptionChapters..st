magritte-description
descriptionChapters: aContainer
	<magritteContainer>
	self chapters do: [ :each |
		aContainer add: (self tutorialDescriptionFor: each) ]