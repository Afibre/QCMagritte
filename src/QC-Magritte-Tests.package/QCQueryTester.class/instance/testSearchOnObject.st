tests
testSearchOnObject
	| query party1 | 
	party1 := (QCParty testParty1For: self model).
	self model addParty: party1.
	query := (self advancedQueryFor: party1 locations first).
	results := query perform.
	self assert: 1 equals: results size
