accessing
commonClass
	self magritteDescription classes isEmpty ifTrue: [ ^QCObject ].
	^self magritteDescription commonClass