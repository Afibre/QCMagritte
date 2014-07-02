initialization
initializeMenu
	self model ifNotNil: [
		self model roots do: [ :each |
			| container |
			container := QCDescriptionBuildMultiLanguage buildFrom: each asContainer target: self model model: self model.
			self addPagesFor: container children first model: self model to: self ] ]