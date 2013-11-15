actions
selectPage: aComponent inTrace: aBoolean
	(aBoolean or: [ rootPage ~= aComponent ]) ifTrue: [ ^self selectPage: aComponent ].
	self halt