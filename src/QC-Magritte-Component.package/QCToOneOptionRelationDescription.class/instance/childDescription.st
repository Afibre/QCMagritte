accessing
childDescription
	| current |
	self options isEmpty
		ifTrue: [ ^ self commonClass template magritteDescription ].
	current := self options anyOne class.
	self options do: [ :each |
		[ each class includesBehavior: current ]
			whileFalse: [ current := current superclass ] ].
	^ current template magritteDescription