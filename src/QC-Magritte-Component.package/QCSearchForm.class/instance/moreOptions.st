actions
moreOptions
	self halt.
	(self call: self queryComponent) ifNotNil: [ :form | form saveAsQuery ].
	self search