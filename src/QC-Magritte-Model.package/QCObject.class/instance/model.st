session
model
	self mainPresenter ifNil: [ ^nil ].
	^self mainPresenter model