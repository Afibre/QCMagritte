private
createFormBasedOn: formChooser
	| theForm |
	theForm := TBSQCMagritteExampleFormDescription new asComponent.
	
	formChooser isValidationMessageStyleTop ifTrue: [
		theForm addDecoration: TBSMagritteValidationDecoration new ].
	
	theForm
		addDecoration: 
			(TBSMagritteFormDecoration newWithDefaultButtons 
				formCss: formChooser layoutStyle;
				legend: formChooser optionsSelectedString;
				yourself);
		yourself.
	
	theForm magritteDescription tbsInlineValidationMessages: formChooser isValidationMessageStyleInline.
	formChooser isLayoutStyleFormInline ifTrue: [
		theForm magritteDescription tbsFormInline: true.
		"inline styles look better without comments"
		theForm magritteDescription do: [ :aDescription |
			aDescription comment: nil ] ].
	
	^ theForm