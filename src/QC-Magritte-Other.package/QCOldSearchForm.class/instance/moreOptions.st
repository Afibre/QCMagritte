actions
moreOptions
	(self call: self queryComponent) ifNotNilDo: [ :form | form saveAsQuery ].
	self search