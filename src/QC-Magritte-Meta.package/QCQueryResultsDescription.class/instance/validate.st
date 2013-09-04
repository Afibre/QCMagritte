maintenance
validate
	super validate.
	self queryColumns do: [ :each | each parent: self ]