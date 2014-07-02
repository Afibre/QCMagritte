accessing
template
	^ template ifNil: [ self commonClass template ]