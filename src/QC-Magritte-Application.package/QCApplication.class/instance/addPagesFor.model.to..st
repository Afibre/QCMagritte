initialization
addPagesFor: aDescription model: aModel to: aComponent
	aComponent addPage: (self pageFor: aDescription target: aModel in: aComponent)