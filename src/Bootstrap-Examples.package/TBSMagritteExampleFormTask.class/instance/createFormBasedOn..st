private
createFormBasedOn: formChooser
	| theForm |
	theForm := TBSMagritteExampleFormDescription new asComponent.
	
	formChooser isValidationMessageStyleTop ifTrue: [
		theForm addDecoration: TBSMagritteValidationDecoration new ].
	
	theForm
		addDecoration: 
			(TBSMagritteFormDecoration newWithDefaultButtons 
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