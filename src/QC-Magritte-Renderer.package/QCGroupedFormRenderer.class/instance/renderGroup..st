rendering
renderGroup: aDescription
	self renderCurrentGroup.
	super renderGroup: aDescription.
	group
		ifNil: [ groupDescriptions := nil ]
		ifNotNil: [ groupDescriptions := OrderedCollection new ]
