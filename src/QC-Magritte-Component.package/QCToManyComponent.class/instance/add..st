actions
add: anObject
	self value: (self value copyWith: anObject); refresh.
	self memento commit