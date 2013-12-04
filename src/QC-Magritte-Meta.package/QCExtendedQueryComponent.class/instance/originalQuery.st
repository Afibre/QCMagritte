accessing
originalQuery
	^originalQuery ifNil: [ originalQuery := 
		self queryFor: self magritteDescription ]