rendering
setClass: aTag forPage: aPage
	(self isActivePage: aPage) ifTrue: [ aTag class: 'active' ].
	(self isActiveChildPage: aPage) ifTrue: [ aTag class: 'active-child' ]
