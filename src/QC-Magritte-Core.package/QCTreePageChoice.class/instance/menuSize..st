accessing
menuSize: aDisplayChildren
	aDisplayChildren ifFalse: [ ^self pages size ].
	^self pages inject: 0 into: [ :total :page |
		total + (self menuSizeFor: page) ]