accessing
referenceFor: aClass 
	self targetDescription commonClass = aClass
		ifTrue: [ ^self targetDescription reference ].
	^aClass magritteTemplate magritteDescription