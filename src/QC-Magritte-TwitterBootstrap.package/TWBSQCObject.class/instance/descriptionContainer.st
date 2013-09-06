magritte descriptions
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: TWBSMagritteFormRenderer;
		componentClass: QCContainerComponent;
		descriptionBuilder: TWBSQCDescriptionBuilder;
		yourself