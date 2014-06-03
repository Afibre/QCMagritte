instance creation
new
	self flag: #todo. "QObject doesNotUnderstand: #default"
	^self on: QCObject default