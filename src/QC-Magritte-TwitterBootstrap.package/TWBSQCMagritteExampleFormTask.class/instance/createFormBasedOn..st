private
createFormBasedOn: formChooser
	| theForm |
	theForm := TWBSQCMagritteExampleFormDescription new asComponent.
	
	formChooser isValidationMessageStyleTop ifTrue: [
		theForm addDecoration: TWBSMagritteValidationDecoration new ].
	
	theForm
		addDecoration: 
			(TWBSMagritteFormDecoration newWithDefaultButtons 
				formCss: formChooser layoutStyle;
				legend: formChooser optionsSelectedString;
				yourself);
		yourself.
	
	theForm magritteDescription twbsInlineValidationMessages: formChooser isValidationMessageStyleInline.
	formChooser isLayoutStyleFormInline ifTrue: [
		theForm magritteDescription twbsFormInline: true.
		"inline styles look better without comments"
		theForm magritteDescription do: [ :aDescription |
			aDescription comment: nil ] ].
	
	^ theForm