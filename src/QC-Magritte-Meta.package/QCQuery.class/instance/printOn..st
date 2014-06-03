printing
printOn: aStream
	super printOn: aStream.
	self queryName ifNotEmpty: [
		aStream nextPut: $(.
		self queryName printOn: aStream.
		aStream nextPut:$) ]