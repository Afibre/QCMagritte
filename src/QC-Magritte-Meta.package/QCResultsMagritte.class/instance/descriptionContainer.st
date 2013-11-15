magritte-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentClass: QCMultiPartResultsComponent;
		descriptionBuilders: (Array with: QCDescriptionFlattener with: QCDescriptionBuildMultiLanguage with: QCDescriptionBuildSettings);
		componentRenderer: QCOverviewRenderer;
		yourself