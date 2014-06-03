accessing
select
	^ select ifNil: [ select := QCStringQuery on: self ]