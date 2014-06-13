accessing
queryFor: aDescription
	^(self rootQueries at: aDescription ifAbsentPut: [ QCQuery on: self description: aDescription ])
