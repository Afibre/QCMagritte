session
session
	"Answer the current seaside session, instance of WASesssion or a subclass."
	self requestContext ifNil: [ ^nil ].
	^ self requestContext session