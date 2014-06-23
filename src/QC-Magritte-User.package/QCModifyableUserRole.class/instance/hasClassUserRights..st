accessing
hasClassUserRights: aClass
	self model ifNil: [ ^aClass hasUserRights ].
	^self model hasClassUserRights: aClass