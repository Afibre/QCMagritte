dummy
selectQuery
	^selectQuery ifNil: [ selectQuery := QCStringQuery on: self ]