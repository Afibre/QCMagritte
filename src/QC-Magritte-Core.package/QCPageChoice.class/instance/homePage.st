pages
homePage
	homePage ifNil: 
		[ self pages ifEmpty: [ ^ nil ].
		^ self pages first ].
	^ homePage