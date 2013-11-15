tests
testCompoundField
	| query party1 location1 | 
	query := (self advancedQueryFor: 'somewhere').
	party1 := (QCParty testParty1For: self model).
	location1 := (QCLocation on: party1)
		street: 'somestreet';
		city: 'somewhere';
		yourself.
	party1 addLocation: location1.
	self model addParty: party1.
	query select searchField: 'location.street'.
	results := query perform.
	self assert: results isEmpty.
	query select searchField: 'location.city'.
	results := query perform.
	self assert: results size equals: 1.
	self assert: (results includes: party1)
