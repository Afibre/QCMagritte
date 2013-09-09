magritte-description
setDefaultsFor: aContainer
	<magritteContainer>
	^aContainer
		componentRenderer: QCGroupedFormRenderer;
		componentClass: QCMultipartComponent;
		descriptionBuilder: QCDescriptionFlattener;
		yourself