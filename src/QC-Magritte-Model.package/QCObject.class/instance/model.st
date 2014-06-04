session
model
	self mainPresenter
		ifNil: [
			self halt.
			^nil ]
		ifNotNilDo: [ :pres | ^pres model ]