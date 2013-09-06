accessing
selectQuery
	^selectQuery ifNil: [ selectQuery := QCStringQuery on: QCModel default ]