actions
moreOptions
	' (self call: self queryComponent) ifNotNil: [ :form | form saveAsQuery ].'.
	self search