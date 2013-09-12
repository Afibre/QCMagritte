magritte-description
setDefaultsFor: aContainer
	<magritteContainer>
	^aContainer
		componentRenderer: QCGroupedFormRenderer;
		componentClass: QCContainerComponent;
		descriptionBuilder: QCTestDescriptionBuilder;
		yourself