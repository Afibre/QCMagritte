*qc-magritte-application
componentClassForContainer: aContainer	
	<magritteContainer>
	aContainer componentRenderer = aContainer class defaultComponentRenderer
		ifTrue: [ aContainer componentRenderer: self componentRenderer ].
	aContainer componentClass = aContainer class defaultComponentClass
		ifTrue: [ aContainer componentClass: self componentClass ].
	aContainer stringWriter = aContainer class defaultStringWriter
		ifTrue: [ aContainer stringWriter: self stringWriter ].
	aContainer descriptionBuilder
		ifNil: [ aContainer descriptionBuilders: self descriptionBuilders ].
	^aContainer