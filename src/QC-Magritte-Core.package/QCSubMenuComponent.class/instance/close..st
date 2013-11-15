pages
close: aComponent 
	aComponent = self rootPage ifFalse: [ ^self subMenuPage close: aComponent ].
	self parent ifNotNil: [ ^self parent close: self ].
	rootPage := nil
		