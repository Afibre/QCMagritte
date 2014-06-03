*QC-Magritte-Other
printHeaderOn: aStream
	aStream nextPut: $".
	aStream nextPutAll: (self csvLabel).
	aStream nextPut: $"