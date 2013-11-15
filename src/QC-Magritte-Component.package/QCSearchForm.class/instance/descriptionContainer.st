magritte-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: QCFormRenderer;
		stringWriter: QCLabelReflectiveWriter;
		componentClass: QCSearchComponent;
		descriptionBuilders: (Array with: QCDescriptionFlattener with: QCDescriptionBuildMultiLanguage with: QCDescriptionBuildSettings);
		yourself