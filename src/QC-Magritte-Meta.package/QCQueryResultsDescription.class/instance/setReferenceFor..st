accessing
setReferenceFor: aDescription
	aDescription ifNil: [ ^aDescription ].
	aDescription classes
		ifEmpty: [ 
			self reference ifNil: [ ^aDescription ].
			aDescription reference: self reference ]
		ifNotEmpty: [ aDescription reference: aDescription reference ].
	shownColumns ifNotNil: [ 
		aDescription reference children do: [ :each | 
			each visible: (self isChildVisible: each).
			each visibleInReport: (self isChildVisible: each).
			each priority: (self priorityForChild: each) ] ].
	self queryColumns
		do: [ :each | each isValid
			ifTrue: [ aDescription reference add: each descriptionValue ] ].
	aDescription reference.
	^aDescription