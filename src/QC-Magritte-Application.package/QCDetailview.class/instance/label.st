accessing
label
	self target ifNil: [ ^'No target' ].
	^self target displayName