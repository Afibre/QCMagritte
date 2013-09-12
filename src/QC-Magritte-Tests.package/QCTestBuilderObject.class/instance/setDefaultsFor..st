magritte-description
setDefaultsFor: aContainer
	<magritteContainer>
	^aContainer
		componentRenderer: QCGroupedFormRenderer;
		componentClass: QCContainerComponent;
		descriptionBuilders: (Array with: QCTestDescriptionBuilder with: QCTestDescriptionBuilder2);
		yourself