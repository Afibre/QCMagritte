accessing-magritte
fullNameFor: aMemento 
	^ ((aMemento readUsing: self descriptionFirstName) ifNil: [ '' ]), ' ',  ( (aMemento readUsing: self descriptionLastName) ifNil: [ '' ])