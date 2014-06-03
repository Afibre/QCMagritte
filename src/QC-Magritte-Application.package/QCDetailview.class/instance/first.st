actions
first
	self prevPage ifNotNil: [
		self navigateTo: (self prevPage first) ]