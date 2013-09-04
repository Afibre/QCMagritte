initialization
initialize
	super initialize.
	self hasRequestContext ifTrue: [ 
		self on: QCSessionStateChanged do: [ :ann | self rebuildReport ] ]