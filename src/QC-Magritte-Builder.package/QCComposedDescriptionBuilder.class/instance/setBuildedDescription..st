visiting
setBuildedDescription: aDescription 
	| builders |
	builders := self target magritteDescription descriptionBuilders.
	buildedDescription := aDescription.
	builders do: [ :each | buildedDescription := each buildFrom: buildedDescription target: target  ]