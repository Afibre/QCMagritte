accessing
shownColumns
	^self report columns select: [ :each | each visible ] thenCollect: [ :each | each magritteDescription ]