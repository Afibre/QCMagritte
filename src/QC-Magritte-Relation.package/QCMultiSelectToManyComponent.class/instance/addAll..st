actions
addAll: aCollection
	self value: (self value copyWithAll: aCollection); refresh.
	self memento commit