as yet unclassified
write: anObject using: aDescription
	((self readUsing: aDescription) = anObject) ifFalse: [
		super write: anObject using: aDescription.
		self history remove: aDescription ifAbsent: [].
		self history add: aDescription]