accessing
menuSizeFor: aPage
	^(aPage respondsTo: #menuSize)
			ifTrue: [ aPage menuSize: (aPage = self currentPage) ]
			ifFalse: [ 1 ]