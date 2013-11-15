tests
testAndQueryOnTwoObjects
	| query party1 |
	query := QCQuery on: self.
	query select: (QCAndOrQuery onQuery: ((QCAdvancedQuery on: query)
		searchValue: 'friEd';
		searchField: 'name';
		yourself)).
	party1 := (QCParty testParty1For: self model).
	self model addParty: party1.
	self model addParty: (QCParty testParty2For: self model).
	query select subQueries add: ((QCAdvancedQuery on: query)
		searchValue: party1 locations first;
		yourself).
	results := query perform.
	self assert: 1 equals: results size
