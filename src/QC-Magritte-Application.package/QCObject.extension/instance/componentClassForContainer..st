*qc-magritte-application
componentClassForContainer: aContainer	
	<magritteContainer>
	aContainer componentRenderer = aContainer class defaultComponentRenderer
		ifTrue: [ aContainer componentRenderer: self componentRenderer ].
	aContainer componentClass = aContainer class defaultComponentClass
		ifTrue: [ aContainer componentClass: self componentClass ].
	^aContainer
		stringWriter: self stringWriter;
		descriptionBuilders: self descriptionBuilders;
		yourself