magritte-description
descriptionLanguages: aContainer
	<magritteContainer>
	self class allLanguages do: [ :each |
		aContainer add: (self descriptionForLanguage: each) ].
	^aContainer