accessing
allPagesFor: aPage
	^(aPage respondsTo: #allPages)
			ifTrue: [ aPage allPages ]
			ifFalse: [ Array with: aPage ]