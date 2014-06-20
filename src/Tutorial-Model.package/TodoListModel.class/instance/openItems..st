accessing
openItems: aCollection
	self openItems do: [ :each |
		(aCollection includes: each) ifFalse: [ self todoItems remove: each ] ].
	aCollection do: [ :each |
		(self todoItems includes: each) ifFalse: [ self todoItems add: each ] ]