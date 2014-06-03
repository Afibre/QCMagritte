testing
shouldRenderSubMenuFor: aPage
	^(aPage respondsTo: #renderSubMenuOn:withActivePage:)