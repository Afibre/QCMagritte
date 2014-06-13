*qc-magritte-bootstrap
addTbsFormWithButtons: aCollection
	self addDecoration: (QCBCommandFormDecoration buttons: aCollection commands: self magritteDescription customCommands)