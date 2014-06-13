initialization
initializeMenu
	" check user rights and generate pages "
	self model ifNotNil: [
		self model roots do: [ :each |
			| container |
			container := QCDescriptionBuildMultiLanguage buildFrom: each asContainer target: self model.
			self addPagesFor: container children first model: self model to: self ] ]