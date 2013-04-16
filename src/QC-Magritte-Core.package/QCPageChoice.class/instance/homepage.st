pages
homepage
	homepage ifNil: 
		[ self pages ifEmpty: [ ^ nil ].
		^ self pages first ].
	^ homepage