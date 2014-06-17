maintenance
sanitizeAfterRead
	super sanitizeAfterRead.
	(QCSanitizeVisitor on: self accessor: #sanitizeAfterRead) visit: self magritteDescription.
