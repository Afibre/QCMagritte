accessing
resultTypeList
	self resultType ifNil: [  ^#() ].
	^Array with: self resultType