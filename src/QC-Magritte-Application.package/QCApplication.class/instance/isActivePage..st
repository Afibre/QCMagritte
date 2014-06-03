testing
isActivePage: aPage
	^(self activePage = aPage) or: [ self currentPage = aPage ]