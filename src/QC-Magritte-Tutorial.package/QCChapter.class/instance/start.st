actions
start
	self session ifNotNil: [ 
		self session announce: (QCShowDetails on: self tutorials first) ]