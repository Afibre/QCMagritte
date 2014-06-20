magritte-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: QCFormRenderer;
		stringWriter: QCLabelReflectiveWriter;
		componentClass: self componentClass;
		descriptionBuilders: self descriptionBuilders;
		yourself