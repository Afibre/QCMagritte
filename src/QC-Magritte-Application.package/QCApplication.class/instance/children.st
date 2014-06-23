hooks
children
	self hasLogin ifTrue: [ ^super children copyWith: self loginForm ].
	^super children