accessing
user: anObject
	user = anObject ifFalse: [
		| logout |
		logout := user notNil.
		user := anObject.
		user
			ifNil: [ logout ifTrue: [ self announce: QCLoggedOut ] ] 
			ifNotNil: [ self announce: QCLoggedIn ] ]