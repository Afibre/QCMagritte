accessing
displayName
	^String streamContents: [ :s |
		s nextPutAll: (QCMultilanguageString on: 'Right').
		self modelClass ifNotNil: [
			s space;
				nextPutAll: self modelClass displayName.
			self crud ifNotNil: [
				s nextPut: $(.
				self crud do: [ :each | s nextPutAll: each asString ].
				s nextPut: $) ] ] ]