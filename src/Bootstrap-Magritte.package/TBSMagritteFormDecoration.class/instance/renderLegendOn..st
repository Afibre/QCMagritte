rendering
renderLegendOn: html
	self legend notNil ifTrue: [
		html legend: self legend ]