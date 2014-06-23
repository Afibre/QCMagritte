accessing
roots
	self hasUserRights
		ifTrue: [
			self users ifEmpty: [ ^self rootsForNoUsers ].
			self user ifNil: [ ^self basicRoots ].
			self user rootsFor: self ].
	^self basicRoots