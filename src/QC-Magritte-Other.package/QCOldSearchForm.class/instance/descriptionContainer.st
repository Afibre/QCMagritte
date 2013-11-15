magritte-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: QCGroupedFormRenderer;
		stringWriter: QCLabelReflectiveWriter;
		componentClass: QCSearchComponent;
		descriptionBuilder: QCDescriptionBuildMultiLanguage;
		yourself