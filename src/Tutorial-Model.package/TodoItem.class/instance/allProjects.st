accessing
allProjects
	self model ifNil: [ ^#() ].
	^self model projects