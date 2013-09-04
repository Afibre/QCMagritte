magritte-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentClass: QCMultipartResultsComponent;
		descriptionBuilders: (Array with: QCDescriptionFlattener with: QCDescriptionBuildMultiLanguage with: QCDescriptionBuildSettings);
		componentRenderer: QCOverviewRenderer;
		yourself