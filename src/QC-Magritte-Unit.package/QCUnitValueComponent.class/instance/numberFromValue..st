accessing
numberFromValue: aString
	aString ifNil: [ ^0 ].
	aString isString ifFalse: [ ^aString ].
	aString ifEmpty: [ ^0 ].
	[ ^aString asNumber ] on: Exception do: [ :ex | ^aString ]