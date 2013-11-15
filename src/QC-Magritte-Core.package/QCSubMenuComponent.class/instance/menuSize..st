accessing
menuSize: aIsActive
	aIsActive ifFalse: [ ^1 ].
	^1 + (self subMenuPage menuSize: (self isRootSelected not))