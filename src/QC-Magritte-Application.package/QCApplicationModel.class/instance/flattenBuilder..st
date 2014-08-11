builders
flattenBuilder: aCollection
	<magritteBuilder>
	self flattenDescriptions ifTrue: [ aCollection addFirst: QCDescriptionFlattener ].
	^aCollection