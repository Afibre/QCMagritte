rendering
setClass: aTag forPage: aPage
	super setClass: aTag forPage: aPage.
	(self isActiveChildPage: aPage) ifTrue: [ aTag class: 'active-child' ]
