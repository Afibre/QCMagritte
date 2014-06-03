actions
last
	self prevPage ifNotNil: [
		self navigateTo: (self prevPage last) ]