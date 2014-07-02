accessing
canView: aRow class: aModelClass 
	^self rights contains: [ :each | each canView: aRow class: aModelClass ]