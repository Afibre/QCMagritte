magritte-description
setDefaultsForContainer: aContainer
	<magritteContainer>
	^aContainer
		componentClass: QCMultiPartComponent;
		descriptionBuilders: (Array with: QCDescriptionBuildMultiLanguage with: QCDemoBuilder);
		yourself