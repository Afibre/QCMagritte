tests
testAdvancedQueryOnSingleObject
	| query party1 | 
	query := (self advancedQueryFor: 'friEd').
	query select searchField: 'name'.
	party1 := (QCParty testParty1For: self model).
	self model addParty: party1.
	results := query perform.
	self assert: 1 equals: results size.
	self assert: (results includes: party1).