testing
isActivePage: aPage
	^self active and: [ self activePage = aPage mainPage ]