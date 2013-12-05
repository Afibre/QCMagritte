magritte descriptions
setDefaultsForContainer: aContainer
	<magritteContainer>
	^aContainer
		componentRenderer: TBSMagritteFormRenderer;
		componentClass: QCContainerComponent;
		descriptionBuilder: TBSQCDescriptionBuilder;
"		descriptionBuilders: (Array with: TWBSQCDescriptionBuilder with: QCDescriptionBuildMultiLanguage);
"		yourself