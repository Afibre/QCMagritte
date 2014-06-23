*qc-magritte-user
allRightsClasses
	^self allModelClasses select: [ :each | each hasUserRights ]