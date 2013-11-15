accessing
allPages
	^self pages inject: OrderedCollection new into: [ :total :page |
		total addAll: (self allPagesFor: page); yourself ]