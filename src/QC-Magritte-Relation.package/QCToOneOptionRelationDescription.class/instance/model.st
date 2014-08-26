temp
model
	^
	"Answer the current WARequestContext instance."
	([ WACurrentRequestContext value ] on: WARequestContextNotFound do: [ :ex | nil ] )session model.