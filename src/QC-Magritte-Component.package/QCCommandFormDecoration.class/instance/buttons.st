actions
buttons
	| retVal |
	retVal := OrderedCollection new.
	retVal addAll: self staticButtons.
	self commands do: [ :each |
		(each showInDetail and: [ each isValidCommandFor: self model component: self decoratedComponent ]) ifTrue: [
			retVal add: (Association key: [ :component |  self executeOn: component command: each ] value: each label)
			] ].
	^retVal