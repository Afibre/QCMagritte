actions
checkData
	self hasChanged
		ifFalse: [
			(self memento hasChanged: self magritteDescription) ifTrue: [
				self memento reset: self magritteDescription ].
			self refreshKeepingIndex ]