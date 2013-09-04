accessing
unselectedColumns
	^self report columns select: [ :each | each visible not ]