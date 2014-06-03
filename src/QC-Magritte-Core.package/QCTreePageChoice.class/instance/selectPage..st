actions
selectPage: aComponent 
	| parentPage inTrace |
	self parent ifNotNil: [ self parent ensurePageSelected: self ].
	(self pages includes: aComponent)
		ifTrue: [
			currentPage = aComponent ifFalse: [ 
				currentPage := aComponent.
				^self ].
			^currentPage selectRoot ].
	parentPage := self findPage: aComponent.
	parentPage ifNil: [ NotFound signalFor: aComponent in: self ].
	inTrace :=  (self isInTrace: parentPage).
	self ensurePageSelected: parentPage.
	parentPage selectPage: aComponent inTrace: inTrace