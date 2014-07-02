initialization
createChildDescription
	| retVal |
	retVal := self magritteDescription childDescription.
	retVal ifNil: [  ^nil ].
	retVal do: [ :each | each visible: each visibleInReport ].
	^retVal