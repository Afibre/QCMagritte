accessing
userOptions
	^ userOptions ifNil: [userOptions := QCUserOptions onOptions: self model defaultUserOptions ]