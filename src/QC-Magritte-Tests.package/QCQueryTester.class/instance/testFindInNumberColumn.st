tests
testFindInNumberColumn
	| query party1 weighing1 | 
	query := (self stringQueryFor: '33').
	party1 := (QCParty testParty1For: self model).
	self model addParty: party1.
	weighing1 := QCWeighing on: party1.
	party1 weighings add: weighing1.
	weighing1 firstWeighing: (QCManualWeighing on: weighing1 value: 33).
	weighing1 material: (QCMaterial on: self model).
	results := query perform.
	self assert: 2 equals: results size.
	self assert: (results includes: weighing1).