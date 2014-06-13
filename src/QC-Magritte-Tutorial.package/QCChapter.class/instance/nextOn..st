actions
nextOn: aComponent 
	aComponent close.
	self session announce: (QCShowDetails on: self nextChapter)