magritte-description
addDynamicChildren: aContainer
	<magritteContainer>
	self resultsDescription ifNotNil: [ :aDescription |
		aContainer add: aDescription].
	aContainer componentRenderer: QCOverviewRenderer.
	^aContainer