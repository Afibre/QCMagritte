accessing
roots
	self hasUserManagement
		ifTrue: [
			self hasAdminUser ifFalse: [ ^self rootsForNoAdmin ].
			self user ifNil: [ ^self basicRoots select: [ :each | (self hasClassUserRights: each commonClass) not ] ].
			self user roots ].
	^self basicRoots