actions
close: aPage
	(self pages includes: aPage) ifTrue: [ ^super close: aPage ].
	^(self findPage: aPage) close: aPage