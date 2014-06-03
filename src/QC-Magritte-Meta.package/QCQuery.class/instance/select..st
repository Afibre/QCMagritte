accessing
select: anObject
	select := anObject.
	anObject ifNotNil: [ anObject parent: self ]