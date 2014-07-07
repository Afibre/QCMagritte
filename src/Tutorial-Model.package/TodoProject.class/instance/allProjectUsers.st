accessing-magritte
allProjectUsers
	^self model users select: [ :each | each isAdminUser not ]