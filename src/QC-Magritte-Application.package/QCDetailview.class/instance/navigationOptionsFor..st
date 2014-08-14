accessing
navigationOptionsFor: aString
	self prevPage ifNil:[^ #()].
	^ self prevPage findObjects: aString.
