builders
flattenBuilder: aCollection
	<magritteBuilder>
	self flattenDescriptions ifTrue: [ aCollection addFirst: MADescriptionFlattener ].
	^aCollection