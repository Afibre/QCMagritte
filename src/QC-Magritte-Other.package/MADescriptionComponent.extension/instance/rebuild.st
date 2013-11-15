*QC-Magritte-Other
rebuild
	" rebuilds the entire component, including memento and description... We must set the memento before setting the description, because setting the description will call the memento.  "
	| model |
	model := self model.
	self setDescription: (model magritteDescription detect: [ :each | each = self magritteDescription ] ifNone: [ self magritteDescription ])