initialization
pageFor: aRelationDescription target: aTarget in: aComponent
	" add the page for the description "
	(aRelationDescription isKindOf: MAToManyRelationDescription)
		ifTrue: [ 
			^(self overviewClass onDescription: aRelationDescription model: self model target: aTarget) ].
	(aRelationDescription isKindOf: MAToOneRelationDescription)
		ifTrue: [
			| retVal target |
			target := aTarget readUsing: aRelationDescription.
			aRelationDescription commonClass hasModelChildren ifFalse: [ ^(self detailsClass on: nil target: target) ].
			aRelationDescription commonClass showRootAsPage
				ifTrue: [ retVal := aComponent subMenuComponentClass on: (self detailsClass on: nil target: target) ]
				ifFalse: [ retVal := aComponent subMenuComponentClass new
					label: aRelationDescription label;
					yourself ].
			retVal parent: aComponent.
			" add sub-pages "
			(self user rootsFor: target) do: [ :each |
				| container |
				container := QCDescriptionBuildMultiLanguage buildFrom: each asContainer target: self user model.
				self addPagesFor: container children first model: target to: retVal ].
			^retVal ].
	" this can only happen when the model returns a 'non-relation' description "
	self Error signal: 'Cannot create a page for the description: ', aRelationDescription asString