magritte-description
setDefaultsForContainer: aContainer
	<magritteContainer>
	^aContainer
		componentClass: QCMultipartComponent;
		descriptionBuilders: (Array with: QCDescriptionBuildMultiLanguage with: QCDemoBuilder);
		yourself