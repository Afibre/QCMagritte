instance creation
on: aParent description: aDescription 
	^(self on: aParent select: (QCMagritteQuery on: nil description: aDescription))
		resultType: aDescription commonClass;
		queryName: aDescription label;
		yourself