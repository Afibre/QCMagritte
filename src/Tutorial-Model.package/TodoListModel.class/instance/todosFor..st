accessing
todosFor: aProject
	^self todoItems select: [ :each | each notComplete and: [ each project = aProject ] ]