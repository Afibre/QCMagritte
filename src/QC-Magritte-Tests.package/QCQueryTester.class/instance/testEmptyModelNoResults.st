tests
testEmptyModelNoResults
	| query | 
	query := (self stringQueryFor: 'test').
	results := query perform.
	"we get the configuration ...
	self assert: results isEmpty"
	self assert: 0 equals: results size
	