initialization
initialize
	super initialize.
	self addPage: TWBSQCExamples new announcement: QCShowTwitterDemo.
	self addPage: QCMultiLanguageDemo new announcement: QCShowMultiLanguageDemo.
	self addPage: QCKeepAliveDemo new announcement: QCShowKeepAliveDemo.
	self addPage: QCFormDemo new announcement: QCShowFormDemo.