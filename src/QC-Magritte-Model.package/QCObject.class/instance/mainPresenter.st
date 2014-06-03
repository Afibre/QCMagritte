session
mainPresenter
	self session ifNil: [ ^nil ].
	^self session mainPresenter
	