actions
setActive: anObject
	(self rows includes: anObject)
		ifTrue: [
			activeRow := anObject.
			self setBatchPageOn: anObject ]