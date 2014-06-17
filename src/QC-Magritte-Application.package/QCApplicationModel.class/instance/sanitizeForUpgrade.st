maintenance
sanitizeForUpgrade
	super sanitizeForUpgrade.
	(QCSanitizeVisitor on: self accessor: #sanitizeForUpgrade) visit: self magritteDescription.