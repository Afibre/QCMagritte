visiting
visitRelationDescription: aDescription
	| builders buildedReference relationValue |
	builders := self target magritteDescription descriptionBuilders.
	buildedReference := aDescription reference.
	relationValue := (target readUsing: aDescription).
	relationValue ifNotNil: [ 
		builders do: [ :each | buildedReference := each buildFrom: buildedReference target: relationValue model: model ].
		aDescription reference: buildedReference].
	super visitReferenceDescription: aDescription