accessing
magritteTemplate
	^ template ifNil: [ self commonClass magritteTemplate ]