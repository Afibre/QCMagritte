accessing
displayName
	| stream res |
	stream := String streamContents: [:s | s nextPutAll: self queryDescription ].
	res := stream contents.
	res size <= 40 ifTrue: [^res].
	^(res copyFrom: 1 to: 38), '...'