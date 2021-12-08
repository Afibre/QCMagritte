magritte-description
addDynamicChildren: aContainer
	<magritteContainer>
	self query resultType
		ifNil: [ self resultsPerType keysDo: [ :aClass |
			aContainer add: (self dynamicChildFor: aClass) ] ]
		ifNotNil: [ :aClass | aContainer add: (self dynamicChildFor: aClass) ].
	aContainer componentRenderer: QCOverviewRenderer.
	^aContainer