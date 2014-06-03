accessing
selector
	^selector ifNil: [ ^#'sanitizeForUpgrade:' ]