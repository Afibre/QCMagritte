magritte descriptions
setDefaultsForContainer: aContainer
	<magritteContainer>
	^aContainer
		componentRenderer: TWBSMagritteFormRenderer;
		componentClass: QCContainerComponent;
		descriptionBuilder: TWBSQCDescriptionBuilder;
"		descriptionBuilders: (Array with: TWBSQCDescriptionBuilder with: QCDescriptionBuildMultiLanguage);
"		yourself