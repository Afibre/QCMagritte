accessing
isInEdit: aRow 
	^(self mementoCache at: aRow ifAbsent: [ nil ]) notNil