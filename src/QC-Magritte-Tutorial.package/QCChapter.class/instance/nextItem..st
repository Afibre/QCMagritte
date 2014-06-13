accessing
nextItem: aTutorial 
	^self tutorials at: ((self tutorials indexOf: aTutorial) +1) ifAbsent: [ nil ]