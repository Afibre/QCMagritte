initialization
pageFor: aRelationDescription model: aModel in: aComponent
	" add the page for the description "
	aRelationDescription isOverviewRoot
		ifTrue: [ 
			^(self overviewClass onDescription: aRelationDescription model: self model target: aModel) ].
	aRelationDescription isDetailRoot
		ifTrue: [
			| retVal target |
			target := aModel readUsing: aRelationDescription.
			aRelationDescription commonClass hasModelChildren ifFalse: [ ^(self detailsClass on: nil target: target) ].
			aRelationDescription commonClass showRootAsPage
				ifTrue: [ retVal := aComponent subMenuComponentClass on: (self detailsClass on: nil target: target) ]
				ifFalse: [ retVal := aComponent subMenuComponentClass new
					label: aRelationDescription label;
					yourself ].
			retVal parent: aComponent.
			" add sub-pages "
			(self rootsFor: target) do: [ :each |
				| container |
				container := QCDescriptionBuildMultiLanguage buildFrom: each asContainer target: aModel model: self model.
				self addPagesFor: container children first model: target to: retVal ].
			^retVal ].
	" this can only happen when the model returns a 'non-relation' description "
	self Error signal: 'Cannot create a page for the description: ', aRelationDescription asString