accessing
searchValueType
	^searchValueType ifNil: [ searchValueType := QCSearchString magritteTemplate ]