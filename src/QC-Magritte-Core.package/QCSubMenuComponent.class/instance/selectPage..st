actions
selectPage: aComponent 
	(rootSelected := (self rootPage = aComponent)) ifFalse: [ 
		aComponent = self subMenuPage ifFalse: [ self subMenuPage selectPage: aComponent ] ].
	self parent ifNotNil: [ self parent ensurePageSelected: self ]