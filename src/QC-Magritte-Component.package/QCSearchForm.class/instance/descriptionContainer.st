magritte-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: QCFormRenderer;
		stringWriter: QCLabelReflectiveWriter;
		componentClass: QCSearchComponent;
		yourself