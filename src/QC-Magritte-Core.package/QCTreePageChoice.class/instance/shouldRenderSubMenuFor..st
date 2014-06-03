testing
shouldRenderSubMenuFor: aPage
	^(aPage respondsTo: #renderSubMenuOn:withActivePage:)
		and: [ self active and: [ self isInTrace: aPage ] ]