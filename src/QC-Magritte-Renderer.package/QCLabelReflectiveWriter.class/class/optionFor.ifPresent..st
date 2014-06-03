accessing
optionFor: anObject ifPresent: aBlock
	" we write here the string value in an options block "
	^aBlock value: (self write: anObject)