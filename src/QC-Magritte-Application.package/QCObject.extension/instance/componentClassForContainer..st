*qc-magritte-application
componentClassForContainer: aContainer	
	<magritteContainer>
	aContainer componentRenderer = aContainer class defaultComponentRenderer
		ifTrue: [ aContainer componentRenderer: self componentRenderer ].
	^aContainer
		stringWriter: self stringWriter;
		componentClass: self componentClass;
		descriptionBuilders: self descriptionBuilders;
		yourself