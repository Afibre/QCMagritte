accessing
searchValueType
	^searchValueType ifNil: [ searchValueType := QCSearchString template ]