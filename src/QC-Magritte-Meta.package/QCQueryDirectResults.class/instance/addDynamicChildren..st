magritte-description
addDynamicChildren: aContainer
	<magritteContainer>
	aContainer add: self resultsDescription.
	aContainer componentRenderer: QCOverviewRenderer.
	^aContainer