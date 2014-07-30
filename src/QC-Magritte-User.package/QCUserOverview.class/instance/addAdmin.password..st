accessing
addAdmin: aString password: aPwdString 
	^self users add: ((self defaultUserClass on: self)
		userid: aString;
		password: aPwdString;
		addAdminRole;
		yourself)