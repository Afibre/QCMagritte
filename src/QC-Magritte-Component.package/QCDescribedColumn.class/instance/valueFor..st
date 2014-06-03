actions
valueFor: aRow
	self mementoCache ifNotNil: [
		" try to find this in the cache "
		| memento |
		memento := (self mementoCache at: aRow ifAbsent: [ nil ]).
		memento ifNotNil: [ ^memento readUsing: self magritteDescription ifAbsent: [ super valueFor: aRow ] ] ].
	^super valueFor: aRow