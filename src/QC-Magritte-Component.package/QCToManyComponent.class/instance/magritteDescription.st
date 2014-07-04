accessing
magritteDescription
	^super magritteDescription
"	^magritteDescription ifNil: [
		| model builder |
		model := self model.
		builder := model magritteDescription descriptionBuilder.
		builder ifNil: [ ^description]. 
		magritteDescription := builder buildFrom: description target: model model: self model model ]"