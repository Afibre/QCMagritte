accessing-magritte
adminRole
	^adminRole ifNil: [ adminRole := self adminRoleClass on: self ]