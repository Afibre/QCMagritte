actions
ensurePageSelected: aComponent 
	| parentPage |
	self parent ifNotNil: [ self parent ensurePageSelected: self ].
	(self pages includes: aComponent)
		ifTrue: [
			currentPage := aComponent.
			^self ].
	parentPage := self findPage: aComponent.
	parentPage ifNil: [ NotFound signalFor: aComponent in: self ].
	self ensurePageSelected: parentPage.
	parentPage selectPage: aComponent inTrace: (self isInTrace: parentPage)