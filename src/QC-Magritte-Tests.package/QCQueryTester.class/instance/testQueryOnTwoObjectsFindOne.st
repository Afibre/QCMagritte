tests
testQueryOnTwoObjectsFindOne
	| query party1 | 
	query := (self advancedQueryFor: 'fried').
	query select searchField: 'plate'.
	party1 := (QCParty testParty1For: self model).
	party1 vehicles add: ((QCVehicle on: party1)
		plateNumber: 'Fried1';
		yourself).
	self model addParty: party1.
	results := query perform.
	self assert: 1 equals: results size.
	self deny: (results includes: party1).