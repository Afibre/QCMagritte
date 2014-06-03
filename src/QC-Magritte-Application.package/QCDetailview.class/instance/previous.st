actions
previous
	self prevPage ifNotNil: [
		self navigateTo: (self prevPage previous: self target) ]