instance creation
on: aModel searchForm: aSearchForm report: aReport resultType: aClass searchPath: aPath
	| retVal |
	retVal := self on: aModel.
	retVal searchPath: aPath.
	retVal resultType: aClass.
	retVal select: aSearchForm selectQuery.
	aReport columns do: [ :each | each addToQuery: retVal ].
	retVal shownColumns: 
		(aReport visibleColumns
			select: [ :each | each isDescribedColumn ]
			thenCollect: [ :each | each magritteDescription ]).
	^retVal