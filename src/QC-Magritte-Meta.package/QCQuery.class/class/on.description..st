instance creation
on: aParent description: aDescription 
	^(self on: aParent select: (QCMagritteQuery on: nil description: aDescription))
		queryName: aDescription label;
		yourself