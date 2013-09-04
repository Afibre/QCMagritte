accessing
useLinksFor: anObject 
	^(self cache at: anObject ifAbsent: [ nil ]) isNil