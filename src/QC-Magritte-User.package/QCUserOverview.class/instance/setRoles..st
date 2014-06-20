accessing-magritte
setRoles: aCollection
	self roles: aCollection.
	self roles do: [ :each |
		each parent: self.
		each sanitizeAfterRead ]