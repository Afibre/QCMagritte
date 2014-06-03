accessing
addPage: aComponent parent: aParent
	aParent = self rootPage
		ifTrue: [ self subMenuPage addPage: aComponent ]
		ifFalse: [ self subMenuPage addPage: aComponent parent: aParent ]