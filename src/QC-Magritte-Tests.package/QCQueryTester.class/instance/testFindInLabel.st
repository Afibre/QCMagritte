tests
testFindInLabel
	| query party order |
	query := (self stringQueryFor: 'friEd').
	party := (QCParty testParty1For: self model).
	self model addParty: party.
	order := QCOrder on: party.
	party orders add: order.
	results := query perform.
	self assert: 2 equals: results size.
	self assert: (results includes: party).
	self assert: (results includes: order)