visiting
sanitize: aValue
	(self processed includes: aValue) 
		ifFalse: [
			self setProcessed: aValue.
			self sanitizePrivate: aValue.
			self use: aValue during: [ self visit: aValue magritteDescription ] ]