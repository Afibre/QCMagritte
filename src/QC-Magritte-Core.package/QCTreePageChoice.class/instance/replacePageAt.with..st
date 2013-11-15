accessing
replacePageAt: anIndex with: aComponent
	| oldPage |
	oldPage := (self pages at: anIndex).
	self pages at: anIndex put: aComponent.
	(oldPage = currentPage) ifTrue: [ currentPage := aComponent ].
	(oldPage = homePage) ifTrue: [ homePage := aComponent ]