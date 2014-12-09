as yet unclassified
write: anObject using: aDescription
	|temp|
	temp := (self readUsing: aDescription).
	( temp = anObject) ifFalse: [
		super write: anObject using: aDescription.
		internal ifFalse: [  
			self history remove: aDescription ifAbsent: [].
			self history add: aDescription]]