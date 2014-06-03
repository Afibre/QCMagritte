accessing
selectedColumns
	^self report columns select: [ :each | each visible ]