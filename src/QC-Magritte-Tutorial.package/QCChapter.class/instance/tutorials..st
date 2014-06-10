accessing
tutorials: aCollection
	tutorials := aCollection asSortedCollection: [ :a :b | a priority < b priority ]