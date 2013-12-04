comparing
= aQuery 
	^(self class = aQuery class) and: [ (self target = aQuery target) and: [ self targetDescription = aQuery targetDescription ] ]