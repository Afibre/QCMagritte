rendering
createUpdaterForList: aList id: anId serialize: aScript group: aGroup
	^((html jQuery id: anId) load
		serialize: aScript)
		html: [ :s | self onChange: s list: aList id: anId group: aGroup ]