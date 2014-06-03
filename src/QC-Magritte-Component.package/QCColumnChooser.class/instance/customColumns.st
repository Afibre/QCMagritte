accessing
customColumns
	^self report columns select: [ :each | each origin notNil ] thenCollect: [ :each | each origin ]