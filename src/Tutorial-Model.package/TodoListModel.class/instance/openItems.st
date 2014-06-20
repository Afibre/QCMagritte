accessing
openItems
	^self todoItems select: [ :each | each notComplete ]