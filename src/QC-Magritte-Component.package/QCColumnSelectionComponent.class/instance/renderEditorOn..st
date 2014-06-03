rendering
renderEditorOn: canvas
	self linkId ifNil: [ self linkId: canvas nextId ].
	canvas div
		id: self linkId;
		with: [
			self reRenderEditorOn: canvas ]
