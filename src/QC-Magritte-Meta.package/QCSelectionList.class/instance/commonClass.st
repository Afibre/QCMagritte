accessing
commonClass
	"Answer a common superclass of the classes of the receiver. The algorithm is implemented to be as efficient as possible. The inner loop will be only executed the first few iterations."

	| current |
	self targets isEmpty
		ifTrue: [ ^ QCObject ].
	current := self targets anyOne class.
	self targets do: [ :each |
		[ each class includesBehavior: current ]
			whileFalse: [ current := current superclass ] ].
	^ current