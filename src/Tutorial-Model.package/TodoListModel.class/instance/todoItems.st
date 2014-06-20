accessing
todoItems
	^todoItems ifNil: [ todoItems := OrderedCollection new ]