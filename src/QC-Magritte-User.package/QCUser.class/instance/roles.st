accessing
roles
	^ roles ifNil: [ roles := self createRoles ]