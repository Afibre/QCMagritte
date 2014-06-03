actions
next
	self prevPage ifNotNil: [
		self navigateTo: (self prevPage next: self target) ]