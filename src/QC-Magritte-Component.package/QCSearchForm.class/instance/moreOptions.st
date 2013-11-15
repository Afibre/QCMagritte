actions
moreOptions
	self halt.
	(self call: self queryComponent) ifNotNilDo: [ :form | form saveAsQuery ].
	self search