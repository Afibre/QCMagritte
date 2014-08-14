accessing
roots
	self hasUserManagement
		ifTrue: [
			self hasAdminUser ifFalse: [ ^self rootsForNoAdmin ].
			self user ifNil: [ ^self basicRoots select: [ :each | self canViewWithNoLogin: each commonClass ] ].
			^self user roots ].
	^self basicRoots