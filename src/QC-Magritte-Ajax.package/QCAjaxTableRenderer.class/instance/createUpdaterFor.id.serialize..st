rendering
createUpdaterFor: aDescription id: anId serialize: aScript
	" 2 things are important here:
		- The id is the id of the html-part that needs to be re-rendered.
		- The 'onChange' method only needs to re-render the content of the html-part, not the enclosing tag "
	^((html jQuery id: anId) load
		serialize: aScript)
		html: [ :s | self onChange: s container: containerDescription id: ajaxId ]