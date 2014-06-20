initialization
createPageFor: anObject
	^(QCBootstrapDetailView on: self target: anObject)
		canClose: true;
		yourself