actions
resetTutorialOn: aComponent
	QCTutorialModel reset.
	self session unregister.
	self requestContext redirectTo: self requestContext application url