initialization
initialize
	super initialize.
	self addPage: QCKeepAliveDemo new announcement: QCShowKeepAliveDemo.
	self addPage: TWBSQCExamples new announcement: QCShowTwitterDemo.
	self addPage: QCMultiLanguageDemo new announcement: QCShowMultiLanguageDemo.