instance creation
on: aSymbol
	^self singletons at: aSymbol ifAbsentPut: [
			self new
				key: aSymbol;
				yourself ]