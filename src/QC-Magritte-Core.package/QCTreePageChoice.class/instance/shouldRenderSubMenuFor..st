testing
shouldRenderSubMenuFor: aPage
	^self active and: [ self isInTrace: aPage ]