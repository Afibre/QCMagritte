accessing
canAddToClass: aClass 
	^self rights contains: [:each | each canAddToClass: aClass ]