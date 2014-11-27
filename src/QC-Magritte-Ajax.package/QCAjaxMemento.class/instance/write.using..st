accessing
write: anObject using: aDescription
	((self readUsing: aDescription) = anObject) ifFalse: [
		super write: anObject using: aDescription.
		internal := true.
		self procesInfluencesFor: aDescription value: anObject.
		self procesHiddenFor: aDescription value: anObject.
		self procesOptionsBlocksFor: aDescription value: anObject.
		internal := false ]