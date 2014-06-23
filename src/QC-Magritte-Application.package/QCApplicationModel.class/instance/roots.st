accessing
roots
	self hasUserRights
		ifTrue: [
			self users ifEmpty: [ ^self rootsForNoUsers ].
			self user ifNil: [ ^self basicRoots select: [ :each | (self hasClassUserRights: each commonClass) not ] ].
			self user roots ].
	^self basicRoots