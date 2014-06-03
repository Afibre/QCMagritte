actions
navigateTo: aNewObject
	aNewObject ifNotNil: [
		self magritteComponent validate ifTrue: [
			self magritteComponent commit.
			target := aNewObject.
			magritteComponent := nil ] ]