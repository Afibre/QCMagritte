accessing
rootsForNoUsers
	^self basicRoots select: [ :each | each commonClass canShowWithNoUsers ]