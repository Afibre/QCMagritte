accessing
find: aString in: anObject
	^self wrappedDescription find: aString in: (anObject readUsing: self relativeTo)