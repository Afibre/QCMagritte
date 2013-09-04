accessing
queryDescription
	^String streamContents: [ :s |
		self subQueries do: [ :each |
			s nextPut: $(;
			nextPutAll: each queryDescription;
			nextPut: $) ] separatedBy: [ s nextPutAll: self operatorText ] ]