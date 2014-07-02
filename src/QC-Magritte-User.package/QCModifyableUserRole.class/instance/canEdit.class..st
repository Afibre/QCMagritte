accessing
canEdit: aRow class: aModelClass 
	^self rights contains: [ :each | each canEdit: aRow class: aModelClass ]