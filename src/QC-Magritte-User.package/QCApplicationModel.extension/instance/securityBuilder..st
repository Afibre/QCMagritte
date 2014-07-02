*qc-magritte-user
securityBuilder: aCollection
	<magritteBuilder>
	self hasUserManagement ifTrue: [ aCollection add: QCDescriptionFilterForSecurity ].
	^aCollection