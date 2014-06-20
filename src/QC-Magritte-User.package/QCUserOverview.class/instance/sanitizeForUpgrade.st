maintenance
sanitizeForUpgrade
	super sanitizeForUpgrade.
	self users do: [ :each |
		each parent: self ]