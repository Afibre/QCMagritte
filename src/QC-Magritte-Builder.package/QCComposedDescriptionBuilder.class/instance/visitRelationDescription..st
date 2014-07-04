visiting
visitRelationDescription: aDescription
	| builders buildedReference |
	builders := self target magritteDescription descriptionBuilders.
	buildedReference := aDescription reference.
	builders do: [ :each | buildedReference := each buildFrom: buildedReference target: target model: model ].
	aDescription reference: buildedReference.
	super visitReferenceDescription: aDescription