accessing
target: aTarget
	target := aTarget.
	self processed add: aTarget.
	aTarget hasParent ifTrue: [ self processed add: aTarget parent ]