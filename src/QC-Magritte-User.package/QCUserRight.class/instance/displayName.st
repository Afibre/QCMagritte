accessing
displayName
	^String streamContents: [ :s |
		s nextPutAll: (QCMultilanguageString on: 'Right').
		self rightsClass ifNotNil: [
			s space;
				nextPutAll: self rightsClass displayName.
			self crud ifNotNil: [
				s nextPut: $(.
				self crud do: [ :each | s nextPutAll: each asString ].
				s nextPut: $) ] ] ]