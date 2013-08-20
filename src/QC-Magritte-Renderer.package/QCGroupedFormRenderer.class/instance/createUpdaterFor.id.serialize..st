rendering
createUpdaterFor: aDescription id: anId serialize: aScript
	^((html jQuery id: anId) load
		serialize: aScript)
		html: [ :s | self onChange: s description: aDescription id: anId ]