accessing
shownColumns
	^self report columns select: [ :each | each visible and: [ each isDescribedColumn ] ] thenCollect: [ :each | each magritteDescription ]