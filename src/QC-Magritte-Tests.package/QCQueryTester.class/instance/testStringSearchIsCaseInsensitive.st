tests
testStringSearchIsCaseInsensitive
	| query party1 | 
	query := (self stringQueryFor: 'friEd').
	party1 := (QCParty testParty1For: self model).
	self model addParty: party1.
	results := query perform.
	self assert: 1 equals: results results size.
	self assert: (results results includes: party1)