magritte-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: QCFormRenderer;
		stringWriter: QCLabelWriter;
		componentClass: QCSearchComponent;
		descriptionBuilders: (Array with: QCDescriptionFlattener with: QCDescriptionBuildMultiLanguage with: QCDescriptionBuildSettings);
		yourself