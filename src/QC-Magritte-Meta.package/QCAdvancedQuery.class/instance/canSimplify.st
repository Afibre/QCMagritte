testing
canSimplify
	^self searchField isEmpty and: [ self operator = QCContainsSubStringOperator instance and: [ self searchValueType = QCSearchString instance ] ]