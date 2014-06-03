maintenance
sanitizeForUpgrade
	super sanitizeForUpgrade.
	self queryColumns do: [ :each | each parent: self ]