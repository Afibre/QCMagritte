tests
testQueryOnTwoObjects
	| query party1 | 
	query := (self stringQueryFor: 'fried').
	party1 := (QCParty testParty1For: self model).
	party1 vehicles add: ((QCVehicle on: party1)
		plateNumber: 'Fried1';
		yourself).
	self model addParty: party1.
	results := query perform.
	self assert: 2 equals: results size.
	self assert: (results includes: party1).