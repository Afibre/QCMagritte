accessing
previous: anObject
	| index |
	index := self rows indexOf: anObject.
	^ self rows at: (index - 1).