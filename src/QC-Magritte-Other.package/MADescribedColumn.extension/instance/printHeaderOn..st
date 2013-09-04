*QC-Magritte-Other
printHeaderOn: aStream
	aStream nextPut: $".
	aStream nextPutAll: (self label).
	aStream nextPut: $"