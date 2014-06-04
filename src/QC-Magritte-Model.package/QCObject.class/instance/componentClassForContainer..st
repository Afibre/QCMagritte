magritte-description
componentClassForContainer: aContainer	
	<magritteContainer>
	aContainer componentRenderer = aContainer class defaultComponentRenderer
		ifTrue: [ aContainer componentRenderer: QCGroupedFormRenderer ].
	^aContainer
		stringWriter: QCLabelReflectiveWriter;
		componentClass: self componentClass;
		descriptionBuilders: self descriptionBuilders;
		yourself