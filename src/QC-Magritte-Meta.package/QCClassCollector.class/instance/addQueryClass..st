accessing
addQueryClass: aClass
	(self classes includes: aClass) ifFalse: [ 
		self classes add: aClass.
		self visit: aClass template magritteDescription ]