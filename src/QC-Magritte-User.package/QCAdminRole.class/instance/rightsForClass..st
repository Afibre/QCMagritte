accessing
rightsForClass: aModelClass 
	aModelClass hasUserRights ifFalse: [ ^#() ].
	^#( 'C' 'R' 'U' 'D' )