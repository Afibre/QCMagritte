magritte-description
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: QCGroupedFormRenderer;
		stringWriter: QCLabelWriter;
		yourself