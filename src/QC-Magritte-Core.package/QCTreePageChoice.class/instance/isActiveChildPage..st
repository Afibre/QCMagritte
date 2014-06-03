testing
isActiveChildPage: aPage
	^self active and: [ (self isActivePage: aPage) not and:  [ (self isInTrace: aPage) ] ]