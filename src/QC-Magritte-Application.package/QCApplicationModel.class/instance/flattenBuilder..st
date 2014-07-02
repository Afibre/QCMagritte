builders
flattenBuilder: aCollection
	<magritteBuilder>
	self flattenDescriptions ifTrue: [ aCollection add: QCDescriptionFlattener ].
	^aCollection