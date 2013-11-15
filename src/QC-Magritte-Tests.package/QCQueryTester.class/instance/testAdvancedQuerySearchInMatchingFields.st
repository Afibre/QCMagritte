tests
testAdvancedQuerySearchInMatchingFields
	| query party1 | 
	query := (self advancedQueryFor: 'friEd').
	party1 := (QCParty testParty1For: self model).
	self model addParty: party1.
	query select searchField: 'test'.
	results := query perform.
	self assert: results isEmpty
