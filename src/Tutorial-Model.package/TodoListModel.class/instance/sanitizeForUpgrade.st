maintenance
sanitizeForUpgrade
	self projects do: [ :each | each parent: self ].
	super sanitizeForUpgrade