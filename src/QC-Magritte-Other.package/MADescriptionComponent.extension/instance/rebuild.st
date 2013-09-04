*QC-Magritte-Other
rebuild
	" rebuilds the entire component, including memento and description.. We must set the memento before setting the description, because setting the description will call the memento.  "
	| model |
	model := self model.
	self setMemento: (model mementoClass model: model description: model magritteDescription).
	self setDescription: model magritteDescription