accessing
query
	^query ifNil: [ query := 
		(self originalQuery copy)
			target: self model;
			yourself ]