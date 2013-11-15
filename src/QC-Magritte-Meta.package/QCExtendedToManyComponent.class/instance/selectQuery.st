accessing
selectQuery
	^selectQuery ifNil: [ selectQuery := QCStringQuery on: self model ]