accessing
commandsFor: aRow
	^self commands
		select: [ :each |
			(each key respondsTo: #isValidCommandFor:) not or: [ 
				each key showInColumn and: [ each key isValidCommandFor: aRow ] ] ]