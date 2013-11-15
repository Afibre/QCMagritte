rendering
renderSubMenuFor: aPage on: canvas
	(self shouldRenderSubMenuFor: aPage) ifTrue: [ aPage renderSubMenuOn: canvas withActivePage: (self isInTrace: aPage) ]