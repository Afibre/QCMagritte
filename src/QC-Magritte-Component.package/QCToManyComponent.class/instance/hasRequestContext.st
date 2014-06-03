session
hasRequestContext
	[ ^self requestContext notNil ] on: Exception do: [ :ex | ^false ]