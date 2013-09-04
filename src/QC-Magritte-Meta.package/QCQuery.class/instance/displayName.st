accessing
displayName
	^String streamContents: [:s | s nextPutAll: self label ] limitedTo: 40