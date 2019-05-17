*qc-magritte-session
model
	^self mainPresenter
		ifNotNil: [ :pres | pres model ]