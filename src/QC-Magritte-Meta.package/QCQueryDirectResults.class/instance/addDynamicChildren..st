magritte-description
addDynamicChildren: aContainer
	<magritteContainer>
	self resultsDescription ifNotNilDo: [ :aDescription |
		aContainer add: aDescription].
	aContainer componentRenderer: QCOverviewRenderer.
	^aContainer