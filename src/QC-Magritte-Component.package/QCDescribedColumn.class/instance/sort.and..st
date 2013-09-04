private
sort: aFirstObject and: aSecondObject
	| one two |
	one := self valueFor: aFirstObject.
	two := self valueFor: aSecondObject.
	one ifNil: [ ^true ].
	two ifNil: [ ^false ].
	(one respondsTo: #<=) ifFalse: [
		one := self formatter value: one.
		two := self formatter value: two ].
	^ one <= two