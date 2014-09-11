initialization
builtDescription
	|  targetDesc |
	targetDesc := self target magritteDescription.
	^ self description asContainer
		componentClass: targetDesc componentClass;
		descriptionBuilder: targetDesc descriptionBuilder;
		descriptionBuilders: targetDesc descriptionBuilders;
		componentRenderer: self renderer; 
		yourself