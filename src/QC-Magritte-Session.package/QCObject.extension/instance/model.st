*qc-magritte-session
model
	self mainPresenter
		ifNil: [ ^nil ]
		ifNotNilDo: [ :pres | ^pres model ]