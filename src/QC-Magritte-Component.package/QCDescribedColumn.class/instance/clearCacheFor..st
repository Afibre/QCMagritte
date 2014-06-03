rendering
clearCacheFor: anObject
	self componentCache removeKey: anObject ifAbsent: [  ]