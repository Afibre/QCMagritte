rendering
onChange: canvas container: aDescription id: anId
	| tmpHtml tmpContainer tmpId |
	errors := nil.
	component validate.
	tmpHtml := html.
	tmpContainer := containerDescription.
	tmpId := ajaxId.
	[
		html := canvas.
		containerDescription := aDescription.
		ajaxId := anId.
		self renderContainerContent: aDescription ] ensure: [ 
		html := tmpHtml.
		containerDescription := tmpContainer.
		ajaxId := tmpId ]