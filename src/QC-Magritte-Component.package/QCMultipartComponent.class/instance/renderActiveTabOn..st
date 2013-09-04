rendering
renderActiveTabOn: canvas
	self activeDescription ifNotNil: [ self renderControl: self activeDescription on: canvas ]