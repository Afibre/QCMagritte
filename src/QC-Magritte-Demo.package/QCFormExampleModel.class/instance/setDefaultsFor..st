magritte-description
setDefaultsFor: aContainer
	<magritteContainer>
	^aContainer
		componentRenderer: QCGroupedFormRenderer;
		componentClass: QCMultiPartComponent;
		descriptionBuilder: QCDescriptionFlattener;
		yourself