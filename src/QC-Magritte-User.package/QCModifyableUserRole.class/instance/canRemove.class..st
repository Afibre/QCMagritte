accessing
canRemove: aRow class: aClass 
	^self rights contains: [:each | each canRemove: aRow class: aClass ]