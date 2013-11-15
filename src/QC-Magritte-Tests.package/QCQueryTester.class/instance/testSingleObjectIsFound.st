tests
testSingleObjectIsFound
	| query party1 | 
	query := (self stringQueryFor: 'Fried').
	party1 := (QCParty testParty1For: self model).
	self model addParty: party1.
	results := query perform.
	self assert: 1 equals: results size.
	self assert: (results includes: party1)