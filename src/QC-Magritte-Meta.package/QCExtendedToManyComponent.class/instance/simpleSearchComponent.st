accessing
simpleSearchComponent
	^simpleSearchComponent ifNil: [ simpleSearchComponent := QCSimpleSearchForm onParent: self ]